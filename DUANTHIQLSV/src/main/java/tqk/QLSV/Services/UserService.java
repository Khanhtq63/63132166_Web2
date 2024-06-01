package tqk.QLSV.Services;

import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;
import java.util.Base64;

import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.PBEKeySpec;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import tqk.QLSV.Models.UserModel;
import tqk.QLSV.Repositories.UserRepositories;
import tqk.QLSV.Ultility.Utility;

@Service
public class UserService {
    
    @Autowired
    private UserRepositories userRepositories;

    private static final int ITERATIONS = 10000;
    private static final int KEY_LENGTH = 256;
    private static final String ALGORITHM = "PBKDF2WithHmacSHA1";

    public boolean existsByUsername(String username) {
        return userRepositories.existsByUsername(username);
    }

    public boolean registerUser(UserModel user) throws IOException, NoSuchAlgorithmException, InvalidKeySpecException {
        if (user == null || Utility.isNullOrEmpty(user.getUsername())) {
            System.out.println("Thông tin đăng ký không đầy đủ.");
            return false;
        }

        if (userRepositories.existsByUsername(user.getUsername())) {
            System.out.println("Tên người dùng đã tồn tại: " + user.getUsername());
            return false;
        }
        
        String encodedPassword = hashPassword(user.getPassword());
        user.setPassword(encodedPassword);
        
        userRepositories.save(user);
        return true;
    }
    
    public boolean loginUser(String username, String password) throws NoSuchAlgorithmException, InvalidKeySpecException {
        UserModel user = userRepositories.findByUsername(username);
        if (user != null && validatePassword(password, user.getPassword())) {
            return true;
        }
        return false;
    }
    
    private String hashPassword(String password) throws NoSuchAlgorithmException, InvalidKeySpecException {
        PBEKeySpec spec = new PBEKeySpec(password.toCharArray(), new byte[16], ITERATIONS, KEY_LENGTH);
        SecretKeyFactory factory = SecretKeyFactory.getInstance(ALGORITHM);
        byte[] hash = factory.generateSecret(spec).getEncoded();
        return Base64.getEncoder().encodeToString(hash);
    }

    private boolean validatePassword(String originalPassword, String storedPassword) throws NoSuchAlgorithmException, InvalidKeySpecException {
        byte[] decodedHash = Base64.getDecoder().decode(storedPassword);
        PBEKeySpec spec = new PBEKeySpec(originalPassword.toCharArray(), new byte[16], ITERATIONS, KEY_LENGTH);
        SecretKeyFactory factory = SecretKeyFactory.getInstance(ALGORITHM);
        byte[] originalHash = factory.generateSecret(spec).getEncoded();
        return MessageDigest.isEqual(originalHash, decodedHash);
    }


}

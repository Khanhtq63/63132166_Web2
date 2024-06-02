package tqk.QLSV.Controllers;

import java.io.IOException;
import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import tqk.QLSV.Models.UserModel;
import tqk.QLSV.Services.UserService;

@Controller
public class UserController {

    @Autowired
    private UserService userService;

    @GetMapping("/register")
    public String showRegistrationForm(Model model) {
        model.addAttribute("user", new UserModel());
        return "/register";
    }

    @PostMapping("/register")
    public String registerUser(@ModelAttribute("user") UserModel user,
                               BindingResult bindingResult,
                               RedirectAttributes redirectAttributes) {
        if (bindingResult.hasErrors()) {
            redirectAttributes.addFlashAttribute("errorMessage", "Vui lòng kiểm tra lại thông tin đăng ký.");
            return "redirect:/register";
        }

        if (userService.existsByUsername(user.getUsername())) {
            redirectAttributes.addFlashAttribute("errorMessage", "Tên người dùng đã tồn tại. Vui lòng chọn tên người dùng khác.");
            return "redirect:/register";
        }

        try {
            userService.registerUser(user);
            redirectAttributes.addFlashAttribute("successMessage", "Đăng ký thành công!");
            return "redirect:/login";
        } catch (IOException | NoSuchAlgorithmException | InvalidKeySpecException e) {
            e.printStackTrace();
            redirectAttributes.addFlashAttribute("errorMessage", "Đã xảy ra lỗi trong quá trình đăng ký. Vui lòng thử lại sau.");
            return "redirect:/register";
        }
    }

    @GetMapping("/login")
    public String showLoginForm(Model model) {
        model.addAttribute("user", new UserModel());
        return "/login";
    }

    @PostMapping("/login")
    public String loginUser(@ModelAttribute("user") UserModel user,
                            RedirectAttributes redirectAttributes) {
        try {
            if (userService.loginUser(user.getUsername(), user.getPassword())) {
                redirectAttributes.addFlashAttribute("successMessage", "Đăng nhập thành công!");
                return "index"; 
            } else {
                redirectAttributes.addFlashAttribute("errorMessage", "Tên người dùng hoặc mật khẩu không chính xác.");
                return "redirect:/login";
            }
        } catch (NoSuchAlgorithmException | InvalidKeySpecException e) {
            e.printStackTrace();
            redirectAttributes.addFlashAttribute("errorMessage", "Đã xảy ra lỗi trong quá trình đăng nhập. Vui lòng thử lại sau.");
            return "redirect:/login";
        }
    }
    
 // Phương thức để lấy danh sách người dùng

}

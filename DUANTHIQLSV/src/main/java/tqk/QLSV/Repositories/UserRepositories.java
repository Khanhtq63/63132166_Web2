package tqk.QLSV.Repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import tqk.QLSV.Models.UserModel;

public interface UserRepositories extends JpaRepository<UserModel, String> {
	
	UserModel findByUsername(String username);
	boolean existsByUsername(String username);
	List<UserModel> findByRole(String role);
	
}

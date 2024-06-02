package tqk.QLSV.Controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import tqk.QLSV.Models.SinhVienModel;
import tqk.QLSV.Models.UserModel;
import tqk.QLSV.Services.SinhVienService;
import tqk.QLSV.Services.UserService;


@Controller
public class AdminController {	
	@GetMapping("/")
	public String TrangChu() {
		return "index.html";
	}
	
	 @Autowired
	    private UserService userService;

	    @GetMapping("/admin/manage-roles")
	    public String manageRoles(Model model) {
	        List<UserModel> users = userService.getAllUsers();
	        model.addAttribute("users", users);
	        return "manage-roles";
	    }

	    @PostMapping("/admin/update-role")
	    public String updateRole(@RequestParam("username") String username, 
	                             @RequestParam("role") String role, 
	                             RedirectAttributes redirectAttributes) {
	        UserModel user = userService.findByUsername(username);
	        if (user != null) {
	            user.setRole(role);
	            userService.save(user);
	            redirectAttributes.addFlashAttribute("successMessage", "Cập nhật vai trò thành công!");
	        } else {
	            redirectAttributes.addFlashAttribute("errorMessage", "Người dùng không tồn tại!");
	        }
	        return "redirect:/admin/manage-roles";
	    }
	    
	
}


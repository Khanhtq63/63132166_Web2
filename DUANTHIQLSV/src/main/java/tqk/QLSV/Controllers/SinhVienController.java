package tqk.QLSV.Controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import tqk.QLSV.Models.SinhVienModel;
import tqk.QLSV.Services.SinhVienService;

@Controller
@RequestMapping("/SinhVienModel")
public class SinhVienController {
	@Autowired SinhVienService sinhVienService;	
	@GetMapping("/all")
	public String getAllSinhVien(Model model) {
		List<SinhVienModel> dssvList = sinhVienService.getAllSinhVien();
		model.addAttribute("DSSinhVien", dssvList);
		return "sinhvien";
		
	}
	
}

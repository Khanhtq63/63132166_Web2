package tqk.QLSV.Controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import tqk.QLSV.Models.SinhVienModel;
import tqk.QLSV.Services.SinhVienService;


@Controller
public class AdminController {	
	@GetMapping("/")
	public String TrangChu() {
		return "index.html";
	}
	
}


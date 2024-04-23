package tqk.QLSV.Controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class AdminController {
	@GetMapping("/")
	public String Dashboard() {
		return "index.html";
	}
	@GetMapping("/sinhvien")
	public String SinhVien() {
		return "SinhVien.html";
	}
	@GetMapping("/khoahoc")
	public String KhoaHoc() {
		return "KhoaHoc.html";
	}
	@GetMapping("/lop")
	public String Lop() {
		return "Lop.html";
	}
	@GetMapping("/monhoc")
	public String MonHoc() {
		return "MonHoc.html";
	}
	@GetMapping("/diem")
	public String Diem() {
		return "Diem.html";
	}
}


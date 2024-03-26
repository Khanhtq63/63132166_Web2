package thiGK.ntu63132166.controllers;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;
import java.util.stream.IntStream;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import thiGK.ntu63132166.models.DTOSinhVien;


@Controller
public class SinhVienController {	

	 
	@GetMapping("/index")
	public String Home(ModelMap mm) {
	    return "index";
	}
	// hard-code dữ liệu
		static List<DTOSinhVien> dsSinhVien=  new ArrayList<DTOSinhVien>();
		static {
				dsSinhVien.add(new DTOSinhVien("63132166", "Trần Quốc Khánh","10"));
				dsSinhVien.add(new DTOSinhVien("63132155", "Giáp Văn Tài","9"));
			 }
	@GetMapping("/StudentList")
	public String listStudent(ModelMap mm) {
	    return "StudentList";
	}
	@GetMapping("/AddSV")
	public String showForm(Model mm) {
        DTOSinhVien sinhvienNull = new DTOSinhVien();
        mm.addAttribute("svDTO", sinhvienNull);
        return "themSinhVien_form";
    }
	@PostMapping("/AddSV")
	public String submitForm(@ModelAttribute("svDTO") DTOSinhVien sv) {
	    return "themSinhVien_OK";
	}
}
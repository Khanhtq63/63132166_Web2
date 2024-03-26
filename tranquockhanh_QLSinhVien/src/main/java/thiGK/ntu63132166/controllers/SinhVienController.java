package thiGK.ntu63132166.controllers;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;

import thiGK.ntu63132166.models.*;

@Controller
public class SinhVienController {	
	@GetMapping("/danhsachSV")
	public String listStudent(ModelMap mm) {
	    return "sinhvien_getAll";
	}
}
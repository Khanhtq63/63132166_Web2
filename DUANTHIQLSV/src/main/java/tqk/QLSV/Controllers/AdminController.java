package tqk.QLSV.Controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class AdminController {
	@GetMapping("/")
	public String Dashboard() {
		return "index.html";
	}
	@GetMapping("/Student")
	public String Student() {
		return "Student.html";
	}
	@GetMapping("/Course")
	public String Course() {
		return "Course.html";
	}
	@GetMapping("/Class")
	public String Class() {
		return "Class.html";
	}
	@GetMapping("/Department")
	public String Department() {
		return "Department.html";
	}
	@GetMapping("/Score")
	public String Score() {
		return "Score.html";
	}
}


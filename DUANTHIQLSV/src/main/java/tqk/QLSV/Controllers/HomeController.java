package tqk.QLSV.Controllers;

import org.springframework.web.bind.annotation.GetMapping;

public class HomeController {
	@GetMapping("/")
	public String home() {
		return "home.html";
	}
	@GetMapping("/about")
	public String about() {
		return "about.html";
	}
	@GetMapping("/service")
	public String sevrice() {
		return "service.html";
	}
	
}


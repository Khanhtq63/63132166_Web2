package tqk.QLSV.Controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class HomeController {
	@GetMapping("/home")
	public String home() {
		return "Home.html";
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


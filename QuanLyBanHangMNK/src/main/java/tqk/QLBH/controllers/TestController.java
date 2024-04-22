package tqk.QLBH.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class TestController {
	@GetMapping("/")
	public String index() {
		return "index.html";
	}
	@GetMapping("/about")
	public String about() {
		return "about.html";
	}
	@GetMapping("/service")
	public String sevrice() {
		return "service.html";
	}
	
	
	@GetMapping("/mau")
	public String mau() {
		return "page-mau-HTML.html";
	}
}

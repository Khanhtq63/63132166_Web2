package com.example.demo;

import java.security.PublicKey;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class WebController {
	
	@GetMapping("/")
	public String index(ModelMap model) {
		model.addAttribute("tb", "Helo String");
		return "index";
	}
}

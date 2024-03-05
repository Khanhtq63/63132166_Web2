package tqk.spring.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class UserController {
	@RequestMapping(value="login",method=RequestMethod.GET)
	public String login() {
		return "login";
	}
	@RequestMapping(value="login",method=RequestMethod.POST)
	public String login(ModelMap model,@RequestParam("id")String id,@RequestParam("password")String pw) {
		if(id.equals("fpt")&&pw.equals("polytechnic")) {
			model.addAttribute("message","Sai thông tin đăng nhập");
		}
		else {
			model.addAttribute("message","Sai thông tin đăng nhập");
		}
		return "login";
	}
}
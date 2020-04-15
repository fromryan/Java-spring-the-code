package com.ryankim.thecode.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class HomeController {
	@RequestMapping("/")
	public String index() {
		return "index.jsp";
	}
	
	@RequestMapping(value="/validatecode", method=RequestMethod.POST)
	public String validateCode(@RequestParam(value="code") String code) {
		if(code.equals("bushido")) {
			return "redirect:/code";
		}
		else {
			return "redirect:/createError";
		}
	}
	
	@RequestMapping("/code")
	public String viewSecretPage() {
		return "secretPage.jsp";
	}
	
	@RequestMapping("/createError")
    public String handleErrors(RedirectAttributes redirectAttributes) {
        redirectAttributes.addFlashAttribute("error", "Incorrect code!");
        return "redirect:/";
	}
}

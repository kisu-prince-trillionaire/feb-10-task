package com.demo.controller;

import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.servlet.view.RedirectView;

@Controller
public class HomeController {

	
	@RequestMapping("/home")
	public String home() {
		String str = null;
		System.out.println(str.charAt(0));
		return "home";
	}

	@RequestMapping("/search")
	public RedirectView search(@RequestParam("querybox") String query) {
		RedirectView r = new RedirectView();
		String url = "https://www.google.com/search?q=" + query;
		r.setUrl(url);
		return r;
	}
	
//	@ResponseStatus(HttpStatus.INTERNAL_SERVER_ERROR)
//	@ExceptionHandler(NullPointerException.class)
//	public String exceptionHandlingNull(Model m) {
//		m.addAttribute("msg", "Null Pointer  Exception has occured");
//		return "error";
//	}
//	
//	@ResponseStatus(HttpStatus.INTERNAL_SERVER_ERROR)
//	@ExceptionHandler(NumberFormatException.class)
//	public String exceptionHandlingNumber(Model m) {
//		m.addAttribute("msg", "Number Format  Exception has occured");
//		return "error";
//	}
//	
//	@ResponseStatus(HttpStatus.INTERNAL_SERVER_ERROR)
//	@ExceptionHandler(Exception.class)
//	public String exceptionHandling(Model m) {
//		m.addAttribute("msg", "Number Format  Exception has occured");
//		return "error";
//	}
}

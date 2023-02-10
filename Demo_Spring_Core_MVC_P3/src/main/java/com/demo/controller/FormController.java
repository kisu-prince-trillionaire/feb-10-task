package com.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.demo.bean.User;

@Controller
public class FormController {

	@RequestMapping("/form")
	public String home() {
		return "form";
	}
	
	@PostMapping("/handle")
	public String handle(@ModelAttribute("user") User user, BindingResult result) {
		if(result.hasErrors()) {
			return "form";
		}
		System.out.println(user);
		return "sucess";
	}
}

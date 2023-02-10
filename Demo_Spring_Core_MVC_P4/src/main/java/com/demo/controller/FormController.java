package com.demo.controller;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.demo.bean.User;

@Controller
public class FormController {

	@RequestMapping("/form")
	public String home() {
		return "form";
	}

	@RequestMapping("/image")
	public String upload() {
		return "upload";
	}

	@PostMapping("/uploadfile")
	public String handleUpload(@RequestParam("profile") CommonsMultipartFile file, HttpSession s) throws IOException {
		System.out.println("File Uploading");
		
		System.out.println(file.getSize());
		System.out.println(file.getName());
		System.out.println(file.getContentType());
		System.out.println(file.getOriginalFilename());
		System.out.println(file.getStorageDescription());
		byte[] data = file.getBytes();
		String path = s.getServletContext().getRealPath("/") + "WEB-INF" + File.separator + "resources" + File.separator
				+ "images" + File.separator + file.getOriginalFilename();
		System.out.println(path);
		FileOutputStream fos;
		try {
			fos = new FileOutputStream(path);
			fos.write(data);
			fos.close();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}
		return "sucess2";
	}

	@PostMapping("/handle")
	public String handle(@ModelAttribute("user") User user, BindingResult result) {
		if (result.hasErrors()) {
			return "form";
		} else {
			System.out.println(user);
			return "sucess";
		}
	}
}

package org.zerock.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/*")
public class MainController {
	
	@RequestMapping("/home")
	public String main() {
		
		return "main";
		
	}
	
	@RequestMapping("/leisure")
	public String leisure() {
		
		return "/Menu_Introduction/leisure";
		
	}
	
	@RequestMapping("/food")
	public String food() {
		
		return "/Menu_Introduction/food";
		
	}
	
	@RequestMapping("/exercise")
	public String exercise() {
		
		return "/Menu_Introduction/exercise";
		
	}
	
	@RequestMapping("/study")
	public String study() {
		
		return "/Menu_Introduction/study";
		
	}
	
	@RequestMapping("/detail")
	public String detail() {
		
		return "/Menu_Introduction/detail";
		
	}
	
}
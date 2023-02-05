package org.zerock.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.zerock.service.AdminMemberService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/admin_member/*")
@AllArgsConstructor
public class AdminMemberController {
	
	AdminMemberService service;
	
	@RequestMapping("/management")
	public String Member_management(Model model) {
		log.info("Member List : " + service.getList());
		
		model.addAttribute("list" , service.getList());
		return "admin/management/member_management";
	}
	
	
	

}

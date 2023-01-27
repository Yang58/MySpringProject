package org.zerock.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin/*")
public class AdminController {

	@RequestMapping("/home")
	public String main() {
		// 관리자 계정 메인 
		return "/admin/main";
	}
	@RequestMapping("freeboard")
	public String freeboard() {
		// 자유 게시판 관리
		return "/admin/management/freeboard";
	}
	@RequestMapping("club_Applist")
	public String applist() {
		// 자유 게시판 관리
		return "/admin/management/club_Applist";
	}
	@RequestMapping("qnaboard")
	public String qnaboard() {
		// 문의 게시판 관리
		return "/admin/management/qnaboard";
	}
	@RequestMapping("member_registration")
	public String member_registration() {
		// 회원 등록
		return "/admin/management/member_registration";
	}
	@RequestMapping("member_management")
	public String member_management() {
		// 회원 관리 
		return "/admin/management/member_management";
	}
	@RequestMapping("club_registration")
	public String club_registration() {
		// 동호회 등록 
		return "/admin/management/club_registration";
	}
	@RequestMapping("club_management")
	public String club_management() {
		// 동호회 관리 
		return "/admin/management/club_management";
	}
	
	@RequestMapping("create_Announcement")
	public String create_Announcement() {
		// 공지사항 작성 
		return "/admin/management/create_Announcement";
	}
	
	@RequestMapping("clubdetail")
	public String clubdetail() {
		// 공지사항 작성 
		return "/admin/management/club_detail";
	}

}

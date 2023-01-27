package org.zerock.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/home/*")
public class MainController {
	
	@RequestMapping("/main")
	public String main() {
		
		return "main";
		
	}
	@RequestMapping("/login")
	public String login() {
		
		return "/limi/login";
	}
	
	@RequestMapping("/admin")
	public String admin() {
		
		return "/limi/admin";
	}
	
	@RequestMapping("/findid")
	public String findid() {
		
		return "/limi/findid";
	}
	
	@RequestMapping("/foundid")
	public String foundid() {
		
		return "/limi/foundid";
	}
	
	@RequestMapping("/findpw")
	public String findpw() {
		
		return "/limi/findpw";
	}
	
	@RequestMapping("/resetpw")
	public String resetpw() {
		
		return "/limi/resetpw";
	}
	
	@RequestMapping("/join")
	public String join() {
		
		return "/limi/join";
	}
	
	@RequestMapping("/join_agree")
	public String join_agree() {
		
		return "/limi/join_agree";
	}
	
	
	@RequestMapping("/join_check")
	public String join_check() {
		
		return "/limi/join_check";
	}
	
	@RequestMapping("/join_form")
	public String join_form() {
		
		return "/limi/join_form";
	}
	
	@RequestMapping("/join_done")
	public String join_done() {
		
		return "/limi/join_done";
	}
	
	@RequestMapping("/newclubapply")
	public String Club_Apply() {
		
		return "/Club_Application/NewClubApply";	
	}
	
	@RequestMapping("/clubapply")
	public String NewClub() {
		
		return "/Club_Application/Club_Apply";	
	}
	@RequestMapping("/clubinfo")
	public String Clubinfo() {
		
		return "/Club_Application/Club_info";	
	}
	@RequestMapping("/leisure")
	public String leisure() {
		
		return "/Menu_Introduction/leisure";
		
	}
	
	@RequestMapping("/mypage")
	public String mypage() {
		return "mypage/mypage";
	}
	
	@RequestMapping("/apply")
	public String applyList() {
		return "mypage/applyList";
	}
	
	@RequestMapping("/info")
	public String info() {
		return "mypage/info";
	}
	
	@RequestMapping("/withdrawal")
	public String withDrawal() {
		return "mypage/withDrawal";
	}
	
	@RequestMapping("/logout")
	public String logout() {
		return "mypage/logout";
	}
	
	@RequestMapping("/password")
	public String password() {
		return "mypage/password";
	}
	
	@RequestMapping("/travel")
	public String food() {
		
		return "/Menu_Introduction/travel";
		
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
	
	@RequestMapping("/freeboard")
	public String FreeBoardList() {
		
		return "/Community/FreeBoardList";
	}
	@RequestMapping("/freewrite")
	public String FreeBoardWrite() {
		
		return "/Community/FreeBoardWrite";
	}
	
	@RequestMapping("/freedetail")
	public String FreeBoardDetail() {
		
		return "/Community/FreeBoardDetail";
	}
	
	
	@RequestMapping("/qnaboard")
	public String QnaBoardList() {
		
		return "/Community/QnaBoardList";
	}
	
	@RequestMapping("/qnawrite")
	public String QnaBoardWrite() {
		
		return "/Community/QnaBoardWrite";
	}
	
	@RequestMapping("/qnadetail")
	public String QnaBoardDetail() {
		
		return "/Community/QnaBoardDetail";
	}
	
}
package org.zerock.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.zerock.domain.AdminBoardDTO;
import org.zerock.domain.AdminReplyDTO;
import org.zerock.domain.Criteria;
import org.zerock.domain.PageDTO;
import org.zerock.service.AdminBoardService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/admin/*")
@AllArgsConstructor
public class AdminBoardController {

	private AdminBoardService service;
	
	@GetMapping("/home")
	public String goHome() {
		return "redirect:/admin/home";
	}


	@GetMapping("/freewrite")
	public String write() {
		log.info("controller write Page Move .... ");
		return "/admin/board/Announcement_write";
	}

	@PostMapping("/freewrite")
	public String postWrite(AdminBoardDTO dto) throws Exception {
		log.info("controller write run .... ");
		service.write(dto);
		return "redirect:/admin/freelist";
	}
	
	@GetMapping("/freelist")
	public String list (Criteria cri , Model model ) {
		log.info("list :" + cri);
		model.addAttribute("list", service.getList(cri));
		model.addAttribute("aanoList", service.getList());
		log.info("list : " + service.getList(cri));
		log.info("aanoList : " + service.getList());
		int total = service.getTotal(cri);
		log.info("total : " + total);
		model.addAttribute("pageMaker", new PageDTO(cri, total));

		return "/admin/board/freeboard";
	}

	@RequestMapping(value = "/freeread", method = RequestMethod.GET)
	public String getRead(@RequestParam("bno") Long bno, Model model) {
		log.info("Get Read") ;
		AdminBoardDTO dto = service.read(bno);

		model.addAttribute("read", dto);

		return "/admin/board/FreeBoardDetail";
	}
	
	// 글 수 정
	@GetMapping("/freemodify")
	public String getModify(@RequestParam("bno") Long bno, Model model) {
		log.info("get modify");

		AdminBoardDTO vo = service.read(bno);

		model.addAttribute("modify", vo);

		return "/admin/board/Announcement_modify";
	}
	// 글 수정 POST
	@PostMapping("/freemodify")
	public String postModify(AdminBoardDTO vo) {
		log.info("post modify");

		service.update(vo);

		return "redirect:/admin/freelist";
	}
	
	// 글 삭제 POST
	@PostMapping("/freedelete")
	public String postDelete(@RequestParam("bno") Long bno) {
		log.info("post delete");
		service.delete(bno);

		return "redirect:/admin/freelist";
	}
	
	
	//-------------------------------- Q&A 
	
	
	@GetMapping("/qnalist")
	public String qnalist( Criteria cri , Model model) {
		log.info("qnaList : " + service.qnaList(cri));
		log.info("list :" + cri);
		int total = service.getqnaTotal(cri);
		model.addAttribute("qnaList", service.qnaList(cri));
		model.addAttribute("total", service.getqnaTotal(cri));
		model.addAttribute("pageMaker", new PageDTO(cri, total));

		return "/admin/qnaBoard/qnaboard";
	}
	
	
	// 글 삭제 POST
	@PostMapping("/qnadelete")
	public String postqnaDelete(@RequestParam("bno") Long bno) {
		log.info("post QnA delete " + bno);
	
		service.ansdelete(bno);
		service.delete(bno);
		 
		return "redirect:/admin/qnalist";
	}
	
	// 답변이 없는 문의일 경우 
	@PostMapping("/qnawrite")
	public String postQnaWrite(AdminReplyDTO dto){
		service.qnawrite(dto);
		log.info("controller write run .... " + dto);
		return "redirect:/admin/qnalist";
	}
	
	// 답변 수정 POST
	@PostMapping("/qnaupdate")
	public String postAnswer(AdminReplyDTO dto) {
		log.info("post QnA update" + dto );

		service.answerupdate(dto);

		return "redirect:/admin/qnalist";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	@GetMapping("/club_management")
	public String club_management(Model model) {
		
		model.addAttribute("club",service.getclubList());
		return "/admin/management/club_management";
	}
	
}

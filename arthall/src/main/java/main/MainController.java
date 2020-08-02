package main;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import board.news.NewsService;
import board.news.NewsVO;
import board.notice.NoticeService;
import board.notice.NoticeVO;
import member.MemberVO;

@Controller
public class MainController {
	@Autowired
	private NoticeService noticeservice;



	@RequestMapping("/index.do")
	public String index(Model model, NoticeVO param, HttpServletRequest request) {
		List<NoticeVO> list = noticeservice.list(param);
		

		model.addAttribute("vo", param);
		model.addAttribute("list",list);
		
		return "index";
	}
	
	@RequestMapping("/design.do")
	public String design(HttpServletRequest request) {
		return "design";
	}
}


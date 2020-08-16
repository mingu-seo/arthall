package main;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import board.notice.NoticeService;
import board.notice.NoticeVO;
import play.PlayVO;

@Controller
public class MainController {
	@Autowired
	private NoticeService noticeservice;



	@RequestMapping("/index.do")
	public String index(Model model, NoticeVO param, HttpServletRequest request) {
		List<NoticeVO> list = noticeservice.list(param);
		PlayVO play = new PlayVO();
		play.setPlayName("횽아");
		model.addAttribute("vo", param);
		model.addAttribute("list", list);
		model.addAttribute("play", play);
		System.out.println("플레이넘버");
		System.out.println(play.getPlayType());
		return "index";
	}
	
	@RequestMapping("/design.do")
	public String design(HttpServletRequest request) {
		return "design";
	}
}




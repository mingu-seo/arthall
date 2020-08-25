package main;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import board.notice.NoticeService;
import board.notice.NoticeVO;
import play.PlayService;
import play.PlayVO;

@Controller
public class MainController {
	@Autowired
	private NoticeService noticeservice;
	@Autowired
	private PlayService playservice;
	
	@RequestMapping("/index.do")
	public String index(Model model, NoticeVO noticeParam, PlayVO playParam, HttpServletRequest request) {
		List<NoticeVO> noticeList = noticeservice.list(noticeParam);
		List<PlayVO> playList = playservice.list(playParam);

		model.addAttribute("noticeVo", noticeParam);
		model.addAttribute("noticeList", noticeList);

		model.addAttribute("playVo", playParam);
		model.addAttribute("playList", playList);
		
		PlayVO play = new PlayVO();
		play.setPlayName("횽아"); // 테스트 횽아 - 가나다
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




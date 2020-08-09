package board.notice;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class User_noticeController {
	
	@Autowired
	private NoticeService noticeservice;
	
	@RequestMapping("/board/notice/index.do")
	public String list(Model model, NoticeVO param) {
		
		List<NoticeVO> list = noticeservice.list(param);
		

		model.addAttribute("vo", param);
		model.addAttribute("list",list);	
		
		System.out.println(param.getSval());
		return "board/notice/notice";
	}
	
	@RequestMapping("/board/notice/view.do")
	public String view_img(Model model, HttpServletRequest req, NoticeVO param) {
		
		NoticeVO data = noticeservice.view_img(param);
		
		model.addAttribute("vo",param);
		model.addAttribute("data",data);
		
		return "/board/notice/notice_view";
	}
	

}

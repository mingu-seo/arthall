package board.notice;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class Ad_noticeController {
//	
	@Autowired
	private NoticeService noticeservice;


	@RequestMapping("/admin/board/notice/list.do")
	public String list(Model model, NoticeVO param) {
		
			List<NoticeVO> list = noticeservice.list(param);
		

			model.addAttribute("vo", param);
			model.addAttribute("list",list);
			
			return "admin/board/notice/list";
	}
	
	@RequestMapping("/admin/board/notice/writeForm.do")
	public String writeForm() {
		
		return "admin/board/notice/write";
	}
	

	@RequestMapping("/admin/board/notice/write.do")
	public String write(HttpServletRequest req, NoticeVO param) {
		
		String pageName = noticeservice.write(req, param);
		
		return pageName;
	}
	
	@RequestMapping("/admin/board/notice/view.do")
	public String view(Model model, HttpServletRequest req, NoticeVO param) {
		
		NoticeVO data = noticeservice.view(param);
		
		model.addAttribute("vo",param);
		model.addAttribute("data",data);
		
		return "admin/board/notice/view";
	
		
	}

	


	
	
}
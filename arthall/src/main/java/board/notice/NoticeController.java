package board.notice;



import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;






@Controller
public class NoticeController {
//	
//	@Autowired
//	private NoticeService noticeservice;

//	@RequestMapping("/admin/index.do")
//	public String index() {
//		return "admin/index";
//	}
//	
//	@RequestMapping("/admin/board/index.do")
//	public String bardIndex() {
//		
//		return "admin/board/index";
//	}
//	
//	@RequestMapping("/admin/board/view.do")
//	public String bardView() {
//		return "admin/board/view";
//	}
	
//	@RequestMapping("/admin/board/write.do")
//	public String bardWrite() {
//		return "admin/board/write";
//	}
	
	
	@RequestMapping("/admin/board/notice/list.do")
	public String list() {
		
//			List<NoticeVO> list = noticeservice.list(param);
//			
////			model.addAllAttributes("vo",param);
////			model.addAllAttributes("data",param);
//			
//			model.addAttribute("vo", param);
//			model.addAttribute("list",list);
			
			return "admin/board/notice/index";
	}


	
	
}
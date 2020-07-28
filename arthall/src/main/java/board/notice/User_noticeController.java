package board.notice;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class User_noticeController {
	
	@Autowired
	private NoticeService noticeservice;
	
	@RequestMapping("admin/board/notice/mainForm.do")
	public String main() {
		
		
		return "board/notice/notice";
	}
	

}

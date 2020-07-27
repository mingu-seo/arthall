package board.qna;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Ad_QnaController {
	
	@RequestMapping("/admin/board/qna/index.do")
	public String list() {		
		
		//List<FaqVO> list = faqService.list(param);
		
		//model.addAttribute("vo", param);
		//model.addAttribute("list", list);
		
		return "admin/board/qna/index";
	}
}

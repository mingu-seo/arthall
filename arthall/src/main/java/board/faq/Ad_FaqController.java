package board.faq;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


/*
 * 20200724 임한철 : 컨트롤러 추가
 */
@Controller
public class Ad_FaqController {
	
	@Autowired
	private FaqService faqService; 
	
	@RequestMapping("/admin/board/faq.do")
	public String list(Model model, HttpServletRequest req, FaqVO param) {
		System.out.println("잘들어가고 컨트롤러고");
		List<FaqVO> list = faqService.list(param);
		
		model.addAttribute("vo", param);
		model.addAttribute("list", list);
		
		return "admin/board/faq/index";
	}
	
	@RequestMapping("/admin/board/writeForm.do")
	public String writeForm() {
	
		return "admin/board/faq/write";
	}
	
	@RequestMapping("/admin/board/write.do")
	public String write() {
	
		return "";
	}
}

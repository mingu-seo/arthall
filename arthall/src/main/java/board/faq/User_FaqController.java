package board.faq;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class User_FaqController {
	@Autowired
	private FaqService faqService; 
	
	@RequestMapping("/board/faq/index.do")
	public String list(Model model, HttpServletRequest req, FaqVO param) {		
		
		List<FaqVO> list = faqService.list(param);
		
		model.addAttribute("vo", param);
		model.addAttribute("list", list);
		
		return "board/faq/faq";
	}
}

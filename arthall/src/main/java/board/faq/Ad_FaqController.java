package board.faq;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;


/*
 * 20200724 임한철 : 컨트롤러 추가
 */
@Controller
public class Ad_FaqController {
	
	@Autowired
	private FaqService faqService; 
	
	@RequestMapping("/admin/board/faq.do")
	public String list(Model model, HttpServletRequest req, FaqVO param) {		
		
		List<FaqVO> list = faqService.list(param);
		
		model.addAttribute("vo", param);
		model.addAttribute("list", list);
		
		return "admin/board/faq/index";
	}
	
	@RequestMapping("/admin/board/writeForm.do")
	public String writeForm(HttpServletRequest req) {
		
		return "admin/board/faq/write";
	}
	
	@RequestMapping("/admin/board/write.do")
	public String write(HttpServletRequest req, FaqVO param, @RequestParam("filename_tmp") MultipartFile file) {
		String pageName = faqService.write(req, param, file);
		
		return pageName;
	}
	
	@RequestMapping("/admin/board/view.do")
	public String view(Model model, HttpServletRequest req, FaqVO param) {
		
		FaqVO data = faqService.view(param);
		
		model.addAttribute("vo", param);
		model.addAttribute("data", data);
		
		return "admin/board/faq/view";
	}
	
	@RequestMapping("/admin/board/modifyForm.do")
	public String modifyForm(Model model, FaqVO param) {
		
		FaqVO vo = faqService.view(param);
		
		model.addAttribute("vo", vo);
		
		return "admin/board/faq/writeModify";
	}
	
	@RequestMapping("/admin/board/modify.do")
	public String modify(Model model, FaqVO param) {
		
		String pageName = faqService.modify(param);
		
		return pageName;
	}
	
	@RequestMapping("/admin/board/delete.do")
	public String delete(@RequestParam("num") String[] chk ) {
		
		String pageName = faqService.delete(chk);
		
		return pageName;
	}
}

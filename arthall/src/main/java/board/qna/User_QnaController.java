package board.qna;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class User_QnaController {

	@Autowired
	private QnaService qnaService;
	
	@RequestMapping("/user/board/qna/index.do")
	public String list(Model model, HttpServletRequest req, QnaVO param) {		
		
		List<QnaVO> list = qnaService.list(param);
		
		model.addAttribute("vo", param);
		model.addAttribute("list", list);
		
		return "admin/board/qna/userList";
	}
	
	@RequestMapping("/user/board/qna/writeForm.do")
	public String writeForm() {		
				
		return "admin/board/qna/userWrite";
	}
	
	@RequestMapping("/user/board/qna/write.do")
	public String write(HttpServletRequest req, QnaVO param, @RequestParam("filename_tmp") MultipartFile file) {	
		
		String pageName = qnaService.write(req, param, file);
		
		return "redirect:index.do";
	}
	
	@RequestMapping("/user/board/qna/view.do")
	public String view(Model model, HttpServletRequest req, QnaVO param) {
		int a = Integer.parseInt((String)req.getParameter("no"));
		QnaVO data = qnaService.view(a, 1);
		
		//model.addAttribute("vo", param);
		model.addAttribute("data", data);
		
		return "admin/board/qna/userView";
	}
	
}

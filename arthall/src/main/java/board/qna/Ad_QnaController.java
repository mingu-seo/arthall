package board.qna;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import board.faq.FaqVO;

@Controller
public class Ad_QnaController {
	
	@Autowired
	private QnaService qnaService;
	
	@RequestMapping("/admin/board/qna/index.do")
	public String list(Model model, HttpServletRequest req, QnaVO param) {		
		
		List<QnaVO> list = qnaService.list(param);
		
		model.addAttribute("vo", param);
		model.addAttribute("list", list);
		
		return "admin/board/qna/index";
	}
	
	@RequestMapping("/admin/board/qna/writeForm.do")
	public String writeForm(HttpServletRequest req) {		
		
		return "admin/board/qna/write";
	}
	
	@RequestMapping("/admin/board/qna/write.do")
	public String write(HttpServletRequest req, QnaVO param, @RequestParam("filename_tmp") MultipartFile file) {	
		String pageName = qnaService.write(req, param, file);
		
		return pageName;
	}
	
	@RequestMapping("/admin/board/qna/view.do")
	public String view(Model model, HttpServletRequest req, QnaVO param) {
		int a = Integer.parseInt((String)req.getParameter("no"));
		QnaVO data = qnaService.view(a, 2);
		
		//model.addAttribute("vo", param);
		model.addAttribute("data", data);
		
		return "admin/board/qna/view";
	}
	
	// 대망의 답변
	@RequestMapping("/admin/board/qna/answerForm.do")
	public String answerForm(Model model, HttpServletRequest req) {
		int a = Integer.parseInt((String)req.getParameter("no"));
		
		QnaVO data = qnaService.view(a, 2);
		
		model.addAttribute("data", data);
				
		return "admin/board/qna/writeAnswer";
	}
	
	
	@RequestMapping("/admin/board/qna/answer.do")
	public String answer(HttpServletRequest req , QnaVO param) {
		
		
		qnaService.answer(param);
		
		
		return "redirect:index.do";
	}
	
	// 대망의 수정
	@RequestMapping("/admin/board/qna/modifyForm.do")
	public String modifyForm(Model model, QnaVO param) {
		
		QnaVO vo = qnaService.view(param.getNo(), 2);
		
		System.out.println("파일이름"+vo.getFilename());
		model.addAttribute("vo", vo);
		
		
		return "admin/board/qna/writeModify";
	}
	
	@RequestMapping("/admin/board/qna/modify.do")
	public String modify(HttpServletRequest req, Model model, QnaVO param, @RequestParam("filename_tmp") MultipartFile file) {
		
		String pageName = qnaService.modify(req, param, file);
		
		return pageName;
	}
	
	@RequestMapping("/admin/board/qna/delete.do")
	public String delete(@RequestParam("num") String[] chk ) {
		
		String pageName = qnaService.delete(chk);
		
		return pageName;
	}
	
}

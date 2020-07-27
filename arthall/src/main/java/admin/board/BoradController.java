package admin.board;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import admin.AdminVO;


/*
 * 20200724 임한철 : 컨트롤러 추가
 */
@Controller
public class BoradController {
	
	@Autowired
	private BoardService boardService; 
	
	@RequestMapping("/admin/admin/board/list.do")
	public String list(Model model, HttpServletRequest req, BoardVO param) {		
		
		List<BoardVO> list = boardService.list(param);
		
		model.addAttribute("vo", param);
		model.addAttribute("list", list);
		
		return "/admin/admin/board/index";
	}
	
	
	@RequestMapping("/admin/admin/board/writeForm.do")
	public String writeForm(HttpServletRequest req) {
		
		return "/admin/admin/board/write";
	}
	
	@RequestMapping("/admin/admin/board/write.do")
	public String write(HttpServletRequest req, BoardVO param, @RequestParam("filename_tmp") MultipartFile file) {
		String pageName = boardService.write(req, param, file);
		
		return pageName;
	}
	
	@RequestMapping("/admin/admin/board/view.do")
	public String view(Model model, HttpServletRequest req, BoardVO param) {
		
		BoardVO data = boardService.view(param);
		List<CommentVO> list = boardService.commentList(param);
		
		model.addAttribute("list", list);
		model.addAttribute("vo", param);
		model.addAttribute("data", data);
		
		return "/admin/admin/board/view";
	}
	
	@RequestMapping("/admin/admin/board/modifyForm.do")
	public String modifyForm(Model model, BoardVO param) {
		
		BoardVO vo = boardService.view(param);
		
		model.addAttribute("vo", vo);
		
		return "/admin/admin/board/writeModify";
	}
	
	@RequestMapping("/admin/admin/board/modify.do")
	public String modify(Model model, BoardVO param) {
		
		String pageName = boardService.modify(param);
		
		return pageName;
	}
	
	@RequestMapping("/admin/admin/board/delete.do")
	public String delete(@RequestParam("num") String[] chk ) {
		
		String pageName = boardService.delete(chk);
		
		return pageName;
	}
	@RequestMapping("/admin/admin/board/deleteComment.do")
	public String deleteComment(HttpServletRequest req, CommentVO param) {
		boardService.deleteComment(param);
		return  "redirect:view.do?no="+req.getParameter("post_no");
	}
	
	@RequestMapping("/admin/admin/board/reply.do")
	public String reply(HttpServletRequest req, BoardVO param, @RequestParam("filename_tmp") MultipartFile file) {
		String pageName = boardService.reply(req, param, file);
		
		return pageName;
	}
	@RequestMapping("/admin/admin/board/replyForm.do")
	public String replyForm(Model model, BoardVO param) {
		
		BoardVO vo = boardService.view(param);
		
		model.addAttribute("vo", vo);
		
		return "/admin/admin/board/replyForm";
	}
	
	@RequestMapping("/admin/admin/board/comment.do")
	public void comment(HttpServletRequest req, CommentVO param, HttpServletResponse res) throws Exception {
		String pageName="";
		AdminVO adminVO = (AdminVO) req.getSession().getAttribute("authAdmin");
		
		param.setWriter(adminVO.getId());	
		pageName = boardService.comment(req, param);
		
		res.setContentType("text/html; charset=utf-8");
		PrintWriter out = res.getWriter();
		out.print("true");
		out.flush();
		
	}
}
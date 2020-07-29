package comment;

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
public class CommentController {
	
	@Autowired
	private CommentService commentService; 
	
	@RequestMapping("/comment/commentList.do")
	public String commentList(Model model, HttpServletRequest req, CommentVO param) {
		
		
		List<CommentVO> list = commentService.commentList(param);
		
		model.addAttribute("list", list);
				
		return "/include/commentList";
	}
	
	@RequestMapping("/comment/deleteComment.do")
	public void deleteComment(HttpServletRequest req, CommentVO param, HttpServletResponse res) throws Exception {
		
		commentService.deleteComment(param);
		res.setContentType("text/html; charset=utf-8");
		PrintWriter out = res.getWriter();
		out.print("true");
		out.flush();
	}
	
	
	@RequestMapping("/comment/comment.do")
	public void comment(HttpServletRequest req, CommentVO param, HttpServletResponse res) throws Exception {
		
		commentService.comment(req, param);
		
		res.setContentType("text/html; charset=utf-8");
		PrintWriter out = res.getWriter();
		out.print("true");
		out.flush();
		
	}
}

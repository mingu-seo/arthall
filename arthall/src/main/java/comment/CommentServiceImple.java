package comment;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import admin.AdminVO;

@Service
public class CommentServiceImple implements CommentService {

	@Autowired
	private CommentDAO commentDAO;

	@Override
	public List<CommentVO> commentList(CommentVO param) {
		
		List<CommentVO> list = commentDAO.commentList(param);
		
		return list;
	}

	@Override
	public int comment(HttpServletRequest req, CommentVO param) {
		
		HttpSession sess = req.getSession();
		AdminVO adminVO = (AdminVO)sess.getAttribute("authAdmin");
		param.setWriter(adminVO.getId());
		
		
		return commentDAO.comment(param);
	}

	@Override
	public int deleteComment(CommentVO param) {
		return commentDAO.deleteComment(param);
	}
	
	

}

package comment;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;

import admin.board.BoardVO;

public interface CommentService {
	public List<CommentVO> commentList(CommentVO param);
	public int deleteComment(CommentVO param);
	public int comment(HttpServletRequest req, CommentVO param);
	public int count(int post_no);
}

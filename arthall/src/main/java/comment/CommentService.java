package comment;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;

public interface CommentService {
	public List<CommentVO> commentList(CommentVO param);
	public int deleteComment(CommentVO param);
	public int comment(HttpServletRequest req, CommentVO param);
}

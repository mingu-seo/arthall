package admin.board;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;

import comment.CommentVO;

public interface BoardService {
	public List<BoardVO> list(BoardVO param);
	public String write(HttpServletRequest req, BoardVO param, MultipartFile file);
	public BoardVO view(BoardVO param);
	public String modify(BoardVO param);
	public String delete(String[] param);
	public String reply(HttpServletRequest req, BoardVO param, MultipartFile file);
//	public int deleteComment(CommentVO param);
//	public int comment(HttpServletRequest req, CommentVO param);
//	public List<CommentVO> commentList(BoardVO param);
}

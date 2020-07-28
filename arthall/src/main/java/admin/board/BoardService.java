package admin.board;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;

public interface BoardService {
	public List<BoardVO> list(BoardVO param);
	public List<CommentVO> commentList(BoardVO param);
	public String write(HttpServletRequest req, BoardVO param, MultipartFile file);
	public BoardVO view(BoardVO param);
	public String modify(BoardVO param);
	public String delete(String[] param);
	public int deleteComment(CommentVO param);
	public String reply(HttpServletRequest req, BoardVO param, MultipartFile file);
	public int comment(HttpServletRequest req, CommentVO param);
}

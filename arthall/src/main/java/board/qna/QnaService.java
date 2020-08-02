package board.qna;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;


public interface QnaService {
	
	public List<QnaVO> list(QnaVO param);
	public String write(HttpServletRequest req, QnaVO param, MultipartFile file);
	public QnaVO view(int no, int flag);
	public int answer(QnaVO param);
	public String modify(HttpServletRequest req, QnaVO param, MultipartFile file);
	public String delete(String[] param);
}

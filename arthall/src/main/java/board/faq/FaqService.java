package board.faq;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;

import board.qna.QnaVO;

public interface FaqService {
	public List<FaqVO> list(FaqVO param);
	public String write(HttpServletRequest req, FaqVO param, MultipartFile file);
	public FaqVO view(FaqVO param);
	public String modify(HttpServletRequest req, FaqVO param, MultipartFile file);
	public String delete(String[] param);
	
}

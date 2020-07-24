package board.faq;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;

public interface FaqService {
	public List<FaqVO> list(FaqVO param);
	public String write(HttpServletRequest req, FaqVO param, MultipartFile file);
	public FaqVO view(FaqVO param);
	public String modify(FaqVO param);
	public String delete(String[] param);
	
}

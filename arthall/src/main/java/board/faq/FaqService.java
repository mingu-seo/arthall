package board.faq;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

public interface FaqService {
	public List<FaqVO> list(FaqVO param);
}

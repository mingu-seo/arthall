package board.faq;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;

import board.qna.QnaVO;

public interface FaqService {
	// faq조회
	public List<FaqVO> list(FaqVO param);
	
	// faq 작성
	public String write(HttpServletRequest req, FaqVO param, MultipartFile file);
	
	// faq 상세보기
	public FaqVO view(FaqVO param);
	
	// faq 수정
	public String modify(HttpServletRequest req, FaqVO param, MultipartFile file);
	
	// faq 삭제
	public String delete(String[] param);
	
}

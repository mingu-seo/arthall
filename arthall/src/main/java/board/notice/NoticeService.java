package board.notice;

import java.util.List;

import javax.servlet.http.HttpServletRequest;


public interface NoticeService {

	//게시글 가져오기
	public List<NoticeVO> list(NoticeVO param);
	
	//게시글 작성
	public String write(HttpServletRequest req, NoticeVO param);
	

	
}

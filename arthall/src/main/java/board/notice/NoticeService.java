package board.notice;

import java.util.List;

import javax.servlet.http.HttpServletRequest;


public interface NoticeService {

	public List<NoticeVO> list(NoticeVO param);
	public String write(HttpServletRequest req, NoticeVO param);
	public NoticeVO view(NoticeVO param);
	public String modify(NoticeVO param);
	public String delete(String[] param);
	
	

	
}

package board.notice;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;




public interface NoticeService {

	public List<NoticeVO> list(NoticeVO param);
	public String write(HttpServletRequest req, NoticeVO param,MultipartFile file);
	public NoticeVO view(NoticeVO param);
	public String modify(NoticeVO param);
	public String delete(String[] param);
	
	//이미지불러오기
	public NoticeVO view_img(NoticeVO param);
	
	

	
}

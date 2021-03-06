package board.notice;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;

import admin.AdminVO;




public interface NoticeService {

	public List<NoticeVO> list(NoticeVO param);
	public String write(HttpServletRequest req, NoticeVO param,MultipartFile file,AdminVO aparam);
	
	public NoticeVO view(NoticeVO param);
	public String modify(HttpServletRequest req, NoticeVO param, MultipartFile file,AdminVO aparam);
	public String delete(String[] param);
	
	//이미지불러오기
	public NoticeVO view_img(NoticeVO param);
	
	
	
	
	
	
	

	
}

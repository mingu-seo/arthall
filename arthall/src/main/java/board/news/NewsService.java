package board.news;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;

import board.notice.NoticeVO;




public interface NewsService {

	public List<NewsVO> list(NewsVO param);
	public String write(HttpServletRequest req, NewsVO param,MultipartFile file);
	public NewsVO view(NewsVO param);
	public String modify(HttpServletRequest req, NewsVO param,MultipartFile file);
	public String delete(String[] param);
	
	//이미지불러오기
	public NewsVO view_img(NewsVO param);
	
	

	
}

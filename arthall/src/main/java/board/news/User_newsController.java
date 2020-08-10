package board.news;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import board.notice.NoticeVO;

@Controller
public class User_newsController {
	
	@Autowired
	private NewsService newsservice;
	
	@RequestMapping("/board/news/index.do")
	public String list(Model model, NewsVO param) {
		
		List<NewsVO> list = newsservice.list(param);
		

		model.addAttribute("vo", param);
		model.addAttribute("list",list);	
		
		return "board/news/news";
	}
	
	@RequestMapping("/board/notice/news_view.do")
	public String view_img(Model model, HttpServletRequest req, NewsVO param) {
		
		NewsVO data = newsservice.view_img(param);
		
		model.addAttribute("vo",param);
		model.addAttribute("data",data);
		
		
		return "board/news/news_view";
	}
	

}

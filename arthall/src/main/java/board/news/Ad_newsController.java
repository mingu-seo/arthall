package board.news;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import admin.AdminVO;


@Controller
public class Ad_newsController {
//	
	@Autowired
	private NewsService newsservice;


	@RequestMapping("/admin/board/news/list.do")
	public String list(Model model, NewsVO param) {
		
			List<NewsVO> list = newsservice.list(param);
		

			model.addAttribute("vo", param);
			model.addAttribute("list",list);
			
			return "admin/board/news/list";
	}
	
	@RequestMapping("/admin/board/news/writeForm.do")
	public String writeForm() {
		
		return "admin/board/news/write";
	}
	

	@RequestMapping("/admin/board/news/write.do")
	public String write(HttpServletRequest req, NewsVO param, @RequestParam("filename_tmp") MultipartFile file, AdminVO aparam) {
		
		String pageName = newsservice.write(req, param,file,aparam);
	
	
		return pageName;
	}
	

	
	@RequestMapping("/admin/board/news/modifyForm.do")
	public String modifyForm(Model model, NewsVO param) {
		
		NewsVO vo = newsservice.view(param);
		
		model.addAttribute("vo",vo);
		
		return "admin/board/news/writeModify";
		
	}
	
	@RequestMapping("/admin/board/news/modify.do")
	public String modify(HttpServletRequest req, NewsVO param, @RequestParam("filename_tmp") MultipartFile file,AdminVO aparam) {
		
		String pageName = newsservice.modify(req,param,file,aparam);
		
		return pageName;
	}
	
	@RequestMapping("/admin/board/news/delete.do")
	public String delete(@RequestParam("num") String[] chk) {
		
		String pageName = newsservice.delete(chk);
		
		return pageName;
		
	}
	
	@RequestMapping("/admin/board/news/view.do")
	public String view_img(Model model, HttpServletRequest req, NewsVO param) {
		
		NewsVO data = newsservice.view_img(param);
		
		model.addAttribute("vo",param);
		model.addAttribute("data",data);
		
		return "admin/board/news/view";
	}

//	@RequestMapping("/admin/board/notice/view.do")
//	public String view(Model model, HttpServletRequest req, NoticeVO param) {
//		
//		NoticeVO data = noticeservice.view(param);
//		
//		model.addAttribute("vo",param);
//		model.addAttribute("data",data);
//		System.out.println("view"+data.getContent());
//		
//		return "admin/board/notice/view";
//	}
	


	
	
}

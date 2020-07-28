package board.notice;

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
public class Ad_noticeController {
//	
	@Autowired
	private NoticeService noticeservice;


	@RequestMapping("/admin/board/notice/list.do")
	public String list(Model model, NoticeVO param) {
		
			List<NoticeVO> list = noticeservice.list(param);
		

			model.addAttribute("vo", param);
			model.addAttribute("list",list);
			
			return "admin/board/notice/list";
	}
	
	@RequestMapping("/admin/board/notice/writeForm.do")
	public String writeForm() {
		
		return "admin/board/notice/write";
	}
	

	@RequestMapping("/admin/board/notice/write.do")
	public String write(HttpServletRequest req, NoticeVO param, @RequestParam("filename_tmp") MultipartFile file) {
		
		String pageName = noticeservice.write(req, param,file);
	
		return pageName;
	}
	

	
	@RequestMapping("/admin/board/notice/modifyForm.do")
	public String modifyForm(Model model, NoticeVO param) {
		
		NoticeVO vo = noticeservice.view(param);
		
		model.addAttribute("vo",vo);
		
		return "admin/board/notice/writeModify";
		
	}
	
	@RequestMapping("/admin/board/notice/modify.do")
	public String modify(HttpServletRequest req, NoticeVO param, @RequestParam("filename_tmp") MultipartFile file) {
	//public String modify(Model model, NoticeVO param,@RequestParam("filename_tmp") MultipartFile file) {
		
		String pageName = noticeservice.modify(req, param, file);
		
		return pageName;
	}
	
	@RequestMapping("/admin/board/notice/delete.do")
	public String delete(@RequestParam("num") String[] chk) {
		
		String pageName = noticeservice.delete(chk);
		
		return pageName;
		
	}
	
	@RequestMapping("/admin/board/notice/view.do")
	public String view_img(Model model, HttpServletRequest req, NoticeVO param) {
		
		NoticeVO data = noticeservice.view_img(param);
		
		model.addAttribute("vo",param);
		model.addAttribute("data",data);
		
		return "admin/board/notice/view";
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

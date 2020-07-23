package admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;





@Controller
public class AdminController {
//	
//	@Autowired
//	private AdminService adminService;

	@RequestMapping("/admin/index.do")
	public String index() {
		return "admin/index";
	}
	
	@RequestMapping("/admin/board/index.do")
	public String bardIndex() {
		
		return "admin/board/index";
	}
	
	@RequestMapping("/admin/board/view.do")
	public String bardView() {
		return "admin/board/view";
	}
	
//	@RequestMapping("/admin/board/write.do")
//	public String bardWrite() {
//		return "admin/board/write";
//	}
	
<<<<<<< HEAD

=======
	@RequestMapping("/admin/board/list.do")
	public String list() {
		return "admin/board/index";
	}
	@RequestMapping("/admin/adminList.do")
	public String adminList(HttpServletRequest req) {
		List<AdminVO> adminList = 
				adminService.adminList();
		req.setAttribute("adminList", adminList);
		return "admin/admin/adminList";
	}
>>>>>>> branch 'master' of https://github.com/mingu-seo/arthall.git
	
	
}

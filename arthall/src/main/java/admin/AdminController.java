package admin.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
public class AdminController {
	
	@Autowired
	private AdminService adminService;

	@RequestMapping("/admin")
	public String index() {
		return "admin/index";
	}
	@RequestMapping("/admin/login.do")
	public String login(Model model, HttpServletRequest req, AdminVO param) {
		System.out.println(param.getAdmin_id());
		System.out.println(param.getPassword());
		String pageName = adminService.login(model, req, param);
		return pageName;
	}
	

	@RequestMapping("/admin/list.do")
	public String list(HttpServletRequest req) {
		List<AdminVO> list = 
				adminService.list();
		req.setAttribute("list", list);
		return "admin/admin/list";
	}
	
	
}

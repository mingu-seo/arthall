package admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;





@Controller
public class AdminController {
//	
	@Autowired
	private AdminService adminService;

	@RequestMapping("/admin")
	public String index() {
		return "admin/index";
	}
	@RequestMapping("/admin/login.do")
	public String login(Model model, HttpServletRequest req, AdminVO param) {
		System.out.println(param.getPassword());
		System.out.println(param.getId());
		String pageName = adminService.login(model, req, param);
		return pageName;
	}
	

	@RequestMapping("/admin/admin/list.do")
	public String list(HttpServletRequest req) {
		List<AdminVO> list = 
				adminService.list();
		req.setAttribute("list", list);
		return "admin/admin/list";
	}
	
	@RequestMapping("/admin/logout.do")
	public String logout(Model model, HttpServletRequest req) {
		HttpSession sess= req.getSession();
		sess.removeAttribute("authAdmin");
		
		model.addAttribute("msg", "관리자 로그아웃되었습니다.");
		model.addAttribute("url", "/admin");
		
		return "common/alert";
	}
	
	@RequestMapping("/admin/admin/regist.do")
	public String regist(Model model, AdminVO param) {
		System.out.println(param.getName());
		String pageName = adminService.regist(model, param);
		
		return pageName;
	}
	@RequestMapping("/admin/admin/registForm.do")
	public String registForm() {
		return "admin/admin/registForm";
	}
//	
	
}

package admin;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {
	@Autowired
	private AdminService adminService;

	@RequestMapping("/admin")
	public String index(HttpServletRequest req, HttpServletResponse res) {
		if (req.getSession().getAttribute("authAdmin") != null) {
			return "redirect:/admin/admin/list.do";
		}
		return "admin/index";
	}

	@RequestMapping("/admin/login.do")
	public String login(Model model, HttpServletRequest req, AdminVO param) {
		System.out.println(param.getPassword());
		System.out.println(param.getId());
		String pageName = adminService.login(model, req, param);
		return pageName;
	}

	@RequestMapping("/admin/logout.do")
	public String logout(Model model, HttpServletRequest req) {
		HttpSession sess = req.getSession();
		sess.removeAttribute("authAdmin");
		model.addAttribute("msg", "관리자 로그아웃되었습니다.");
		model.addAttribute("url", "/admin");
		
		return "common/alert";
	}
	
	@RequestMapping("/admin/admin/list.do")
	public String list(HttpServletRequest req) {
		List<AdminVO> list = adminService.list();
		req.setAttribute("list", list);
		return "admin/admin/list";
	}

	@RequestMapping("/admin/admin/registForm.do")
	public String registForm() {
		return "admin/admin/registForm";
	}
	
	@RequestMapping("/admin/admin/regist.do")
	public String regist(Model model, AdminVO param) {
		
		String pageName = adminService.regist(model, param);

		return pageName;
	}

	@RequestMapping("/admin/admin/modifyForm.do")
	public String modifyForm(Model model, AdminVO param) {
		AdminVO vo = adminService.selectOne(param);
		model.addAttribute("adminVO", vo);
		return "admin/admin/modifyForm";
	}
	
	@RequestMapping("/admin/admin/modify.do")
	public String modify(Model model, HttpServletRequest req, AdminVO param) {
		String pageName = adminService.modify(model, param);
		return pageName;
	}

	@RequestMapping("/admin/admin/dup.do")
	public void dup(HttpServletRequest req, AdminVO param, HttpServletResponse res) throws Exception {
		String r = adminService.dup(req, param);
		res.setContentType("text/html; charset=utf-8");
		PrintWriter out = res.getWriter();
		out.print(r);
		out.flush();
	}

	@RequestMapping("/admin/admin/delete.do")
	public String delete(Model model, HttpServletRequest req, AdminVO param) {
		int numDeleted = 0;
		if (req.getParameterValues("chkd") != null) {
			for (String noCheckedStr : req.getParameterValues("chkd")) {
				numDeleted += adminService.delete(noCheckedStr);
			}
		}
		model.addAttribute("msg", numDeleted + "개 관리자 계정이 삭제되었습니다.");
		model.addAttribute("url", "/admin/admin/list.do");
		return "common/alert";
	}
}

package member;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class User_MemberController {

	@Autowired
	MemberService memberService;
	
	@RequestMapping("admin/member/joinForm.do")
	public String joinForm() {
		return "admin/member/joinForm";
	}
	
	@RequestMapping("/member/join.do")
	public String join(HttpServletRequest req, MemberVO param) {
		String pageName = memberService.regist(param, req);
		
		return pageName;
	}
	
	@RequestMapping("/member/joinSuccess.do")
	public String joinSuccess() {
		return "member/joinSuccess";
	}
	
	@RequestMapping("/member/loginForm.do")
	public String loginForm() {
		return "member/loginForm";
	}
	
	@RequestMapping("/member/login.do")
	public String login(HttpServletRequest req, @RequestParam("id") String memberid, 
						@RequestParam("password") String password) {
		
		String pageName = memberService.login(req, memberid, password);
		
		return pageName;
	}
	
	@RequestMapping("/member/logout.do")
	public String logout(Model model, HttpSession sess, HttpServletResponse res) throws IOException {

		sess.removeAttribute("authUser");
		model.addAttribute("msg", "로그아웃되었습니다.");
		model.addAttribute("url", "/index.do");
		
		return "common/alert";
	}
	
	@RequestMapping("/member/changePwdForm.do")
	public String changePwdForm() {
		return "member/changePwdForm";
	}
	
	@RequestMapping("/member/changePwd.do")
	public String changePwd(HttpServletRequest req, HttpSession sess,
							@RequestParam("newPwd") String newPwd) {
		
		MemberVO vo = (MemberVO)sess.getAttribute("authUser");
		String pageName = memberService.changePwd(req, vo.getId(), newPwd);
		return pageName;
	}
	
	
}

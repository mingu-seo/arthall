package member;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

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
	
	@RequestMapping("member/joinForm.do")
	public String joinForm() {
		return "member/joinForm";
	}
	
	@RequestMapping("/member/dupId.do")
	public void dup(HttpServletRequest req, MemberVO param, HttpServletResponse res) throws Exception {
		String r = memberService.dupId(req, param);
		res.setContentType("text/html; charset=utf-8");
		PrintWriter out = res.getWriter();
		out.print(r);
		out.flush();
	}
	
	//회원가입_이메일 인증
	@RequestMapping("/member/sendMail.do")
	public void sendMail(HttpServletRequest req, MemberVO param, HttpServletResponse res) throws Exception {
		
		int ran = memberService.sendMail(req, param);
		res.setContentType("text/html; charset=utf-8");
		
		PrintWriter out = res.getWriter();
		out.print(ran);
		out.flush();
	}

	
	@RequestMapping("member/join.do")
	public String join(HttpServletRequest req, MemberVO param) {
		String pageName = memberService.join(param, req);
		return pageName;
	}

	
	@RequestMapping("member/loginForm.do")
	public String loginForm() {
		return "member/loginForm";
	}
	
	@RequestMapping("member/login.do")
	public String login(Model model, HttpServletRequest req, @RequestParam("id") String id, 
						@RequestParam("pw") String pw) {
		String pageName = memberService.login(model, req, id, pw);
		
		return pageName;
	}
	
	@RequestMapping("member/logout.do")
	public String logout(Model model, HttpSession sess, HttpServletResponse res) throws IOException {

		sess.removeAttribute("authUser");
		model.addAttribute("msg", "로그아웃되었습니다.");
		model.addAttribute("url", "/index.do");
		
		return "common/alert";
	}
	
	@RequestMapping("member/findIDForm.do")
	public String findIDForm(){
		return "member/findIDForm";
	}
	
	@RequestMapping("member/findId.do")
	public String findID(Model model, HttpServletRequest req, MemberVO param){
		
		String pageName = memberService.findId(model, req, param);
		return pageName;
	}
	
	@RequestMapping("member/findIDResult.do")
	public String findIDResult(){
		return "member/findIDResult";
	}
	
	@RequestMapping("member/findPasswordForm.do")
	public String findPasswordForm() {
		return "member/findPasswordForm";
	}
	
	@RequestMapping("member/findPassword.do")
	public String findPassword(Model model, HttpServletRequest req, MemberVO param) throws Exception{
		
		String pageName = memberService.findPassword(model, req, param) ;
		return pageName;
	}
	
	@RequestMapping("member/findPasswordResult.do")
	public String findPasswordResult(){
		return "member/findPasswordResult";
	}
	
	@RequestMapping("member/mypage.do")
	public String mypage(){
		return "member/mypage";
	}
	
	//내 정보 조회_비밀번호 확인
	@RequestMapping("/member/confirmPw.do")
	public void confirmPw(HttpServletRequest req, MemberVO param, HttpServletResponse res) throws Exception {
		String r = memberService.confirmPw(req, param);
		res.setContentType("text/html; charset=utf-8");
		PrintWriter out = res.getWriter();
		out.print(r);
		out.flush();
	}
	
	@RequestMapping("member/myInfoLoad.do")
	public String myInfoLoad(Model model, HttpServletRequest req, MemberVO param) throws Exception {
		
		String pageName = memberService.myInfoLoad(model, req, param) ;
		return pageName;
	}
	
	@RequestMapping("member/myInfo_show.do")
	public String myInfo_show(){
		return "member/myInfo_show";
	}
	
	@RequestMapping("member/myInfo_edit.do")
	public String myInfo_edit(Model model, HttpServletRequest req) throws Exception {
		
		memberService.myInfo_edit(model, req);
		
		return "member/myInfo_edit";
	}
	
	@RequestMapping("member/myInfo_modify.do")
	public String myInfo_modify(Model model, HttpServletRequest req, MemberVO param){
		
		String pageName = memberService.myInfo_modify(model, req, param);
		
		return pageName;
	}

	@RequestMapping("member/deleteId.do")
	public String deleteId(@RequestParam String id, @RequestParam String password, Model model) {
		boolean result = memberService.checkPw(id, password);
		if(result) { // 일치하면 메인으로..?
			memberService.deleteId(id);
			return "/index.do";
		} else { // 불일치하면 다시 탈퇴화면
			model.addAttribute("message", "비밀번호가 일치하지 않습니다.");
			return "member/deleteId";
		}
	}
	
}

package main;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import member.MemberVO;

@Controller
public class MainController {

	@RequestMapping("/index.do")
	public String index(HttpServletRequest request) {
//		HttpSession sess = request.getSession();
//		MemberVO vo = new MemberVO();
//		vo.setName("홍길동");
//		sess.setAttribute("authUser", vo);
		return "index";
	}
}

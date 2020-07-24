package member;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class Ad_MemberController {
	
	@Autowired
	private MemberService memberService;

	@RequestMapping("admin/member/index.do")
	public String list(Model model, HttpServletRequest req, MemberVO param) {
		List<MemberVO> list = memberService.list(param);
		
		model.addAttribute("vo", param);
		model.addAttribute("list", list);
		
		return "admin/member/index";
	}
}

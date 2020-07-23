package member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Mem_MemberController {

	@Autowired
	MemberService memberService;
	
	@RequestMapping("admin/member/joinForm.do")
	public String joinForm() {
		return "admin/member/joinForm";
	}
	
	
}

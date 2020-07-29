package member;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class Ad_MemberController {
	
	@Autowired
	private MemberService memberService;

	@RequestMapping("/admin/member/index.do")
	public String list(Model model, HttpServletRequest req, MemberVO param) {
		List<MemberVO> list = memberService.list(param);
		
		model.addAttribute("vo", param);
		model.addAttribute("list", list);
		
		return "admin/member/index";
	}
	
	@RequestMapping("admin/include/searchBox.do")
	public String searchBox() {
	
		return "admin/include/searchBox";
	}
	
	@RequestMapping("/admin/member/banMem.do")
	public String view(Model model, @RequestParam("chk") String[] chk, MemberVO param) {
		for (int i = 0; i < chk.length; i++) {
			System.out.println(chk[i]);
		}
		String pageName = memberService.banMem(chk, param);
		return pageName;
	}
	
	@RequestMapping("/admin/member/detail.do")
	public String detail(Model model, HttpServletRequest req, MemberVO param) {

		MemberVO vo = memberService.memberdetail(param);
		System.out.println(param.getNo());
		model.addAttribute("member", vo);
		return "admin/member/detail";
	}
	
	@RequestMapping("/admin/member/write.do")
	public String memberupdate(Model model, HttpServletRequest req, MemberVO param) {
		String pageName = memberService.detail(param);
		String i = req.getParameter("page");
		return pageName+i;
	}

}
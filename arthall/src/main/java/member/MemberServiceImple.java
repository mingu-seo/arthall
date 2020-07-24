package member;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberServiceImple implements MemberService{

	@Autowired
	private MemberDAO memberDao;
	
	@Override
	public String regist(MemberVO param, HttpServletRequest req) {
		
		int dupliCheck = 0;
		MemberVO vo = memberDao.selectOne(param.getId());
		
		// 중복 시 -1 리턴
		if (vo != null) {
			dupliCheck = -1;
		} else {
			dupliCheck = memberDao.insert(param);
		}
		
		String pageName = "";
		if (dupliCheck < 0) {
			req.setAttribute("isDup", "true");
			pageName = "admin/member/joinForm";
		} else if (dupliCheck == 0) {
			pageName = "admin/member/joinForm";
		} else {
			pageName = "redirect:joinSuccess.do?name="+param.getName();
		}
		return pageName;
	}

	@Override
	public String login(HttpServletRequest req, String memberid, String password) {
		String pageName = "";
		MemberVO vo = memberDao.login(memberid, password);
		if (vo == null) {
			pageName = "admin/member/loginForm";
		} else {
			// 세션에 등록
			req.getSession().setAttribute("authUser", vo);
			pageName = "redirect:/index.do";
		}
		
		return pageName;
	}

	@Override
	public String changePwd(HttpServletRequest req, String id, String password) {
		String pageName = "";
		
		MemberVO member = memberDao.login(id, req.getParameter("curPwd"));
		if (member == null) {
			req.setAttribute("pwdNotEqual", "true");
			pageName = "member/changePwdForm";
		} else {
			MemberVO param = new MemberVO();
			param.setId(id);
			param.setPassword(password);
			int r = memberDao.changePwd(param);
			pageName = "member/changePwdSuccess";
		}
		return pageName;
	}
	
}

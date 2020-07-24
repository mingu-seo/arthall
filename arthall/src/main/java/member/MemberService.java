package member;

import javax.servlet.http.HttpServletRequest;

public interface MemberService {

	public String regist(MemberVO param, HttpServletRequest req);
	
	public String login(HttpServletRequest req, String memberid, String password);
	
	public String changePwd(HttpServletRequest req, String memberid, String password);
}
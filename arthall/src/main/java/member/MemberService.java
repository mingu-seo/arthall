package member;

import java.sql.Timestamp;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

public interface MemberService {
	
	//관리자
	public List<MemberVO> list(MemberVO param); 
    
	//사용자
	public String regist(MemberVO param, HttpServletRequest req);
	
	public String login(HttpServletRequest req, String id, String password);
	
	public String changePwd(HttpServletRequest req, String id, String password);
}

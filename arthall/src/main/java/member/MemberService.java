package member;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public interface MemberService {
	
	//관리자
	public List<MemberVO> list(MemberVO param); 
	
	public String banMem(String[] chk, MemberVO param);
	
	public String detail(MemberVO param);
	
	public MemberVO memberdetail(MemberVO param);
	    
	//사용자
	public String join( MemberVO param, HttpServletRequest req);
	
	public String dupId(HttpServletRequest req, MemberVO param);
	
	public int sendMail(HttpServletRequest req, MemberVO param) throws Exception;
	
	public String login(HttpServletRequest req, String id, String password);
	
	public String changePwd(HttpServletRequest req, String id, String password);
	
}

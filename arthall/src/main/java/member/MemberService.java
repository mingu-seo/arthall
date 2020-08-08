package member;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.ui.Model;


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
	
	public String login(Model model, HttpServletRequest req, String id, String pw);
	
	public String findId(Model model, HttpServletRequest req, MemberVO param);
	
	
}

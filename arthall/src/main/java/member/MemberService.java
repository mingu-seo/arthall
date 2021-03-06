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

	public void deleteId(String id);

	public boolean checkPw(String id, String password);

	public String findPassword(Model model, HttpServletRequest req, MemberVO param) throws Exception;
		
	public String confirmPw(HttpServletRequest req, MemberVO param);
	
	public String myInfoLoad(Model model, HttpServletRequest req, MemberVO param) throws Exception;
	
	public void myInfo_edit(Model model, HttpServletRequest req) throws Exception;
	
	public String myInfo_modify(Model model, HttpServletRequest req, MemberVO param);
}

package admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;



public interface AdminService {

	public List<AdminVO> list();
	
	public String login(Model model, HttpServletRequest req,AdminVO param);
	public String regist(Model model, AdminVO param);
	public String dup(HttpServletRequest req, AdminVO param);
	public int delete(String idCheckedStr);
	public String modify(Model model, AdminVO param);

	public AdminVO selectOne(AdminVO param);
	
}

package admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

@Service
public class AdminServiceImple implements AdminService {
	
	@Autowired
	AdminDAO adminDao;
	
	@Override
	public List<AdminVO> list() {
		return adminDao.list();
	}

	@Override
	public String login(Model model, HttpServletRequest req, AdminVO param) {
		 AdminVO adminVO = adminDao.login(param);
		 String pageName = "";
		 if(adminVO != null) {
			 req.getSession().setAttribute("authAdmin", adminVO);
			 pageName = "redirect:/admin/admin/list.do";
		 }else {
			 model.addAttribute("msg", "아이디와 비밀번호를 확인해주세요.");
			 model.addAttribute("url", "/admin");
			 
			 pageName = "common/alert";
		 }
		 return pageName;
	}

	@Override
	public String regist(Model model, AdminVO param) {
		int numReg = adminDao.regist(param);
		String pageName = "";
		if(numReg != 0) {
			model.addAttribute("msg", "관리자"+numReg+"명이 등록되었습니다.");
			model.addAttribute("url", "");
			pageName = "common/alert";
		} else {
			model.addAttribute("msg", "관리자 등록 실패");
			model.addAttribute("url", "");
			pageName = "common/alert";
		}
		return pageName;
	}

}

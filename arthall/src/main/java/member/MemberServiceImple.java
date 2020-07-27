package member;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import util.Parameter;

@Service
public class MemberServiceImple implements MemberService{

	@Autowired
	private MemberDAO memberDao;
	
	@Override
	public List<MemberVO> list(MemberVO param) {
		
		int startRow = (param.getPage()-1) * param.getSize(); // limit 시작값
		int totalCount = memberDao.count(param); // 총갯수
		int totalPage = totalCount / param.getSize(); // 총페이지수
		if (totalCount % param.getSize() > 0) totalPage++;
		
		// 목록하단 페이징 시작페이지
		int startPage = param.getPage()/5*5+1;
		if (param.getPage() % 5 == 0) startPage -= 5;
		
		// 목록하단 페이징 마지막페이지
		int endPage = startPage + 4;
		if (endPage > totalPage) endPage = totalPage;
		
		param.setStartRow(startRow);
		param.setStartPage(startPage);
		param.setEndPage(endPage);
		param.setTotalCount(totalCount);
		param.setTotalPage(totalPage);
		List<MemberVO> list = memberDao.list(param);
		
		return list;
	}
	
	
	@Override
	public String regist(MemberVO param, HttpServletRequest req) {
		
		int dupliCheck = 0;
		MemberVO vo = memberDao.selectOne(param.getId());
		
		// 중복 시 -1 리턴
		if (vo != null) {
			dupliCheck = -1;
		} else {
			System.out.println("서비스값 : " + param.getTel());
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
	public String login(HttpServletRequest req, String id, String password) {
		String pageName = "";
		MemberVO vo = memberDao.login(id, password);
		if (vo == null) {
			pageName = "admin/member/loginForm";
		} else {
			// 세션에 등록
			req.getSession().setAttribute("authUser", vo);
			memberDao.lastVisit(id);
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
	
	@Override
	public String banMem(String[] chk, MemberVO param) {
		
		for (int i = 0; i < chk.length; i++) {
			param.setNo(chk[i]);
			memberDao.banMem(param);
		}
		
		return "redirect:index.do";
	}
	
	@Override
	public String detail(MemberVO param) {
		String pageName = "";
		int r = memberDao.detail(param);
		if (r > 0) {
			memberDao.detail(param);
			pageName = "redirect:index.do?page="+param.getPage();
			
		}
		
		return pageName;
	}


	@Override
	public MemberVO memberdetail(MemberVO param) {
		MemberVO vo = memberDao.memberdetail(param);
		
		return vo;
	}
	
}

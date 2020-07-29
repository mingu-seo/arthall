package member;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
	public String join(MemberVO param, HttpServletRequest req) {
		int numJoin = 0;
		
		MemberVO vo = memberDao.dupId(param);
		if(vo == null) {
			numJoin = memberDao.join(param);
		}
		String pageName = "";
		if(numJoin != 0) {
			req.setAttribute("msg", "회원가입 실패");
			req.setAttribute("url", "index.do");
			pageName = "common/alert";
		}
		return pageName;
	}
	
	@Override
	public String dupId(HttpServletRequest req, MemberVO param) {
		MemberVO vo = memberDao.dupId(param);
		String r = "true";
		if (vo != null) {
			r = "false";
		}
		return r;
	}

	@Override
	public String login(HttpServletRequest req, String id, String password) {
		String pageName = "";
		MemberVO vo = memberDao.login(id, password);
		if (vo == null) {
			pageName = "admin/member/loginForm";
		} else {
			memberDao.lastVisit(id); // 마지막 방문일 수정
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
			pageName = "redirect:index.do?page=";
			
		}
		
		return pageName;
	}


	@Override
	public MemberVO memberdetail(MemberVO param) {
		MemberVO vo = memberDao.memberdetail(param);
		
		return vo;
	}
	
}

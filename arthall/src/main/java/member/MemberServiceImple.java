package member;

import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import mail.SendMail;

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
		
		System.out.println("++++++++++선택값 : "+param.getBanSelect());
		
		List<MemberVO> list = memberDao.list(param);
		
		return list;
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
	public String join(MemberVO param, HttpServletRequest req) {
		
		String email_Id = param.getEmail_id();
		String email_Add = param.getEmail_add();
		String email = email_Id+'@'+email_Add;
		param.setEmail(email);
		
		memberDao.join(param);
		return "redirect:/index.do";
	}
	
	
	
	@Override
	public int sendMail(HttpServletRequest req, MemberVO param) throws Exception{;
		int ran = new Random().nextInt(900000) + 100000;
		SendMail.sendEmail("kdy7710@naver.com", param.getEmail(), "[충무아트홀] 인증번호", "인증번호 : "+ran);
		return ran;
	}

	@Override
	public String login(Model model, HttpServletRequest req, String id, String pw) {
		
		MemberVO vo = memberDao.login(id, pw);
		
		String pageName = "";
		
		if (vo != null) { 
			memberDao.lastVisit(vo.getId()); // 마지막 방문일 수정
			req.getSession().setAttribute("authUser", vo);
			pageName = "redirect:/index.do";
		} else {
			model.addAttribute("msg", "아이디와 비밀번호를 확인해주세요.");
			model.addAttribute("url", "/member/loginForm.do");

			pageName = "common/alert";
		}
		return pageName;
	}
	
	@Override
	public String findId(Model model, HttpServletRequest req, MemberVO param) {
		
		MemberVO vo = memberDao.findId(param);
		
		String pageName = "";
		
		if (vo != null) { 
			model.addAttribute("vo", param);
			pageName = "redirect:/member/findIDResult.do";
		} else {
			model.addAttribute("msg", "일치하는 계정이 없습니다. 이름과 이메일을 확인해주세요.");
			model.addAttribute("url", "/member/findIDForm.do");

			pageName = "common/alert";
		}
		return pageName;
	}
	
	@Override
	public String banMem(String[] chk, MemberVO param) {
		
		for (int i = 0; i < chk.length; i++) {
			param.setBanMem(chk[i]);
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

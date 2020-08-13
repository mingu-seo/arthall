package member;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
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
		
		String birth = param.getBirth();
		birth = birth.substring(0, 4) + "-" + birth.substring(4, 6) + "-" + birth.substring(6, birth.length());
		param.setBirth(birth);
		
		param.setBanMem("정상");
		
		memberDao.join(param);
		return "redirect:/index.do";
	}
	
	
	
	@Override
	public int sendMail(HttpServletRequest req, MemberVO param) throws Exception{
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
		String maskingId = "";
	
		if (vo != null) { 			
			maskingId = vo.getId();
			vo.setId(maskingId.replaceAll("(?<=.{3}).", "*"));
			
			model.addAttribute("vo", vo);
			pageName = "member/findIDResult";
		} else {
			model.addAttribute("msg", "일치하는 계정이 없습니다. 이름과 이메일을 확인해주세요.");
			model.addAttribute("url", "/member/findIDForm.do");
			
			pageName = "common/alert";
		}
		return pageName;
	}
	
	
	@Override
	public String findPassword(Model model, HttpServletRequest req, MemberVO param) throws Exception {
		
		String pageName = "";
		String tempPw = "";
		
		char pwCollection[] = new char[] {
				'1','2','3','4','5','6','7','8','9','0',
				'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z',
				'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z'};
		
		for (int i = 0; i < 10; i++) {
		 int selectRandomPw = (int)(Math.random()*(pwCollection.length));
		 tempPw += pwCollection[selectRandomPw];
		}
		
		param.setPw(tempPw);
		int check = memberDao.findPassword(param);

		if (check == 1) { 
			model.addAttribute("vo", param);
			
			SendMail.sendEmail("kdy7710@naver.com", param.getEmail(), "[충무아트홀] 임시 비밀번호", "임시비밀번호 : "+tempPw);
			pageName = "member/findPasswordResult";
			
		} else {
			model.addAttribute("msg", "일치하는 계정이 없습니다. 이름, 아이디, 이메일을 확인해주세요.");
			model.addAttribute("url", "/member/findPasswordForm.do");
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
	
	@Override
	public String confirmPw(HttpServletRequest req, MemberVO param) {
		
		MemberVO vo = (MemberVO)req.getSession().getAttribute("authUser");
		
		param.setId(vo.getId());
		MemberVO param_confirmPw = memberDao.confirmPw(param);
		
		String r = "false";
		if (param_confirmPw != null) {
			r = "true";
		}
		
		System.out.println("검색결과 : "+r);
		return r;
	}
	
	@Override
	public String myInfoLoad(Model model, HttpServletRequest req, MemberVO param) throws Exception {

		MemberVO vo = (MemberVO)req.getSession().getAttribute("authUser");
		
		// 생년월일 포멧
		SimpleDateFormat dateFormat1 = new SimpleDateFormat("yyyy-MM-dd");
		SimpleDateFormat dateFormat2 = new SimpleDateFormat("yyyy년 MM월 dd일");

		Date changeDate = dateFormat1.parse(vo.getBirth());
		
		System.out.println("생일 출력 : "+vo.getBirth());
		String birth = (dateFormat2.format(changeDate));
		vo.setBirth(birth);		
		
		// 연락처 포멧
		String Tel = vo.getTel();
	    if (Tel.length() == 8) {
	    	Tel = Tel.replaceFirst("^([0-9]{4})([0-9]{4})$", "$1-$2");
	    } else if (Tel.length() == 12) {
	    	Tel = Tel.replaceFirst("(^[0-9]{4})([0-9]{4})([0-9]{4})$", "$1-$2-$3");
	    } else {
	    	Tel = Tel.replaceFirst("(^02|[0-9]{3})([0-9]{3,4})([0-9]{4})$", "$1-$2-$3");	    	
	    }
	    vo.setTel(Tel);
		
		model.addAttribute("vo", vo);
		return "member/myInfo_show";
	}
	
	@Override
	public void myInfo_edit(Model model, HttpServletRequest req) throws Exception {
		
		MemberVO vo = (MemberVO)req.getSession().getAttribute("authUser");
		
		// 생년월일 포멧
		String birth = vo.getBirth();
		birth = birth.replace("년 ", "-");
		birth = birth.replace("월 ", "-");
		birth = birth.replace("일", "");
		vo.setBirth(birth);
		
		// 연락처 포멧
		String Tel = vo.getTel();
		Tel = Tel.replace("-", "");
		vo.setTel(Tel);	
		
		 // 이메일 포멧
	    String email = vo.getEmail();
	    
        int idx = email.indexOf("@"); 
        
        String email_id = email.substring(0, idx);
        String email_add = email.substring(idx+1);
        
        vo.setEmail_id(email_id);
        vo.setEmail_add(email_add);		
		
		model.addAttribute("vo", vo);
		
	}
	
	// 회원탈퇴
	@Override
	public void deleteId(String id) {
		memberDao.deleteId(id);
	}

	
	// 회원탈퇴 시 비밀번호 체크
	@Override
	public boolean checkPw(String id, String password) {
		return memberDao.checkPw(id, password);
	}

	

}

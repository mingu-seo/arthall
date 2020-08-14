package member;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class MemberDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	// 1. 관리자페이지
	// DB 총 회원 수 카운트
	public int count(MemberVO param) {
		return sqlSession.selectOne("member.count", param);
	}
	
	// 회원목록 조회
	public List<MemberVO> list(MemberVO param) {
		return sqlSession.selectList("member.list", param);
	}
	
	// 2. 사용자페이지
	// 회원가입_아이디 중복 확인
	public MemberVO dupId(MemberVO param) {
		MemberVO vo = sqlSession.selectOne("member.dupId", param);
		return vo;
	}
	
	// 회원가입_DB등록
	public int join(MemberVO param) {
		return sqlSession.insert("member.join", param);
	}

	// 로그인
	public MemberVO login(String id, String pw) {
		System.out.println("Dao에서 id : "+id);
		Map<String, Object> m = new HashMap<String, Object>();
		m.put("id", id);
		m.put("pw", pw);
		
		return sqlSession.selectOne("member.login", m);
	}
	
	// 아이디찾기
	public MemberVO findId(MemberVO param) {
		
		return sqlSession.selectOne("member.findId", param);
	}
	
	// 임시비밀번호 업데이트
	public int findPassword(MemberVO param) {
		return sqlSession.update("member.findPassword", param);
	}
	
	// 마지막 방문 일자 수정
	public int lastVisit(String id) {
		return sqlSession.update("member.lastVisit", id);
	}

	
	// 회원정지
	public int banMem(MemberVO param) {
		return sqlSession.update("member.banMem", param);		
	}

	public int detail(MemberVO param) {
		return sqlSession.update("member.detail", param);
	}
	
	public MemberVO memberdetail(MemberVO param) {
		return sqlSession.selectOne("member.memberdetail", param);
	}
	
	// 회원정보_마이페이지 접근시 비밀번호 확인
	public MemberVO confirmPw(MemberVO param) {
		MemberVO vo = sqlSession.selectOne("member.confirmPw", param);
		return vo;
	}
	
	public int myInfo_modify(MemberVO param) {
		return sqlSession.update("member.myInfo_modify", param);
	}
	

	// 회원탈퇴
	public int deleteId(String id) {
		return sqlSession.delete("member.deleteId", id);
	}
	
	// 탈퇴 시 비밀번호 확인
	public boolean checkPw(String id, String password) {
		boolean result = false;
		Map<String, Object> m = new HashMap<String, Object>();
		m.put("id", id);
		m.put("password", password);
		int count = sqlSession.selectOne("member.checkPw", m);
		if(count == 1) result = true;
		return result;
	}


	
}

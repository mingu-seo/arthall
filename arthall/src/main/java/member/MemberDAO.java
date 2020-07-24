package member;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
	public MemberVO selectOne(String id) {
		MemberVO vo = sqlSession.selectOne("member.selectOne", id);
		return vo;
	}
	
	// 회원가입_DB등록
	public int insert(MemberVO param) {
		System.out.println("DAO값 : " + param.getTel());
		return sqlSession.insert("member.insert", param);
	}

	// 로그인
	public MemberVO login(String id, String password) {
		Map<String, Object> m = new HashMap<String, Object>();
		m.put("id", id);
		m.put("pwd", password);
		
		return sqlSession.selectOne("member.login", m);
	}
	
	public int changePwd(MemberVO param) {
		return sqlSession.update("member.changePwd", param);
	}
}

package member;

import java.util.HashMap;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	// 회원가입_아이디 중복 확인
	public MemberVO selectOne(String id) {
		MemberVO vo = sqlSession.selectOne("member.selectOne", id);
		return vo;
	}
	
	// 회원가입_DB등록
	public int insert(MemberVO param) {
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

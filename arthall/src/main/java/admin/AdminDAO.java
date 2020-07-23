package admin;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class AdminDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public List<AdminVO> list() {
		return sqlSession.selectList("admin.list");
	}
	
	public AdminVO login(AdminVO param) {
		return sqlSession.selectOne("admin.login", param);
	}

}

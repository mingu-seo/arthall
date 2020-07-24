package board.faq;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class FaqDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public int count(FaqVO param) {
		System.out.println("잘들어가고 다오고");
		return sqlSession.selectOne("faq.count", param);
	}
	
	public List<FaqVO> list(FaqVO param) {
		return sqlSession.selectList("faq.list", param);
	}
}

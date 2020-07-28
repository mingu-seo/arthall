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
		return sqlSession.selectOne("faq.count", param);
	}
	
	public List<FaqVO> list(FaqVO param) {
		return sqlSession.selectList("faq.list", param);
	}
	
	public int write(FaqVO param) {
		return sqlSession.insert("faq.write", param);
	}
	public FaqVO view(FaqVO param) {
		return sqlSession.selectOne("faq.view", param);
	}
	
	public int modify(FaqVO param) {
		return sqlSession.update("faq.modify", param);
	}
	public int modifyFile(FaqVO param) {
		return sqlSession.update("faq.modifyFile", param);
	}
	public int delete(int faqno) {
		return sqlSession.delete("faq.delete", faqno);
	}
	
	
}

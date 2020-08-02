package board.news;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class NewsDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;

	
	public int count(NewsVO param) {
		return sqlSession.selectOne("news.count", param);
	}
	
	public List<NewsVO> list(NewsVO param) {
		return sqlSession.selectList("news.list", param);
	}

	public int write(NewsVO param) {
		return sqlSession.insert("news.write", param);
	}
	
	public NewsVO view(NewsVO param) {
		return sqlSession.selectOne("news.view",param);
	}
	
	public String viewContent(NewsVO param) {
		return sqlSession.selectOne("news.viewContent",param);
	}

	public int modify(NewsVO param) {
		
		return sqlSession.update("news.modify", param);
	}

	public int delete(int newsno) {
		return sqlSession.delete("news.delete",newsno);
	}
	
	public int readCnt(NewsVO param) {
		return sqlSession.update("news.readCnt",param);
	}
	
	
	public NewsVO view_img(NewsVO param) {
		return sqlSession.selectOne("news.view_img",param);
	}
	
	public int modifyFile(NewsVO param) {
		return sqlSession.update("news.modifyFile",param);
	}
	
	
}

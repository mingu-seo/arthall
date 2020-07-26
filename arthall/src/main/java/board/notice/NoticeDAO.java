package board.notice;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class NoticeDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;

	
	public int count(NoticeVO param) {
		return sqlSession.selectOne("notice.count", param);
	}
	
	public List<NoticeVO> list(NoticeVO param) {
		return sqlSession.selectList("notice.list", param);
	}

	public int write(NoticeVO param) {
		return sqlSession.insert("notice.write", param);
	}
	
	public int writeContent(NoticeVO param) {
		return sqlSession.insert("notice.writeContent", param);
	}
	
	public NoticeVO view(NoticeVO param) {
		return sqlSession.selectOne("notice.view",param);
	}

	public int modify(NoticeVO param) {
		
		return sqlSession.update("notice.modify", param);
	}

	public int delete(int noticeno) {
		return sqlSession.delete("notice.delete",noticeno);
	}
	
	public int readCnt(NoticeVO param) {
		return sqlSession.update("article.readCnt",param);
	}
	
	
	
}

package board.qna;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class QnaDAO {
	@Autowired
	private SqlSessionTemplate sqlSession;

	public int count(QnaVO param) {
		return sqlSession.selectOne("qna.count", param);
	}

	public List<QnaVO> list(QnaVO param) {
		return sqlSession.selectList("qna.list", param);
	}

	public int write(QnaVO param) {
		return sqlSession.insert("qna.write", param);
	}

	// 라스트 gno주기
	public int throwLastGno() {
		int gno;

		try {
			gno = sqlSession.selectOne("qna.lastgno");
		} catch (NullPointerException e) {
			System.out.println("첫행이라 0로 초기화해줍니다."); // 나가서 1을 더할테니
			gno = 0;
		}

		return gno;
	}
	public QnaVO view(int no) {
		
		return sqlSession.selectOne("qna.view", no);
	}
	public int readCnt(int no) {
		return sqlSession.update("qna.readcnt", no);
	}
	
	public int aUpdate(QnaVO data) {
		return sqlSession.update("qna.aUpdate", data);
	}
	
	public int modify(QnaVO param) {
		return sqlSession.update("qna.modify", param);
	}
	public int modifyFile(QnaVO param) {
		return sqlSession.update("qna.modifyFile", param);
	}
	public int delete(int no) {
		return sqlSession.delete("qna.delete", no);
	}
}

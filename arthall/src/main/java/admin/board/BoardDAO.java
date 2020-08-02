package admin.board;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BoardDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public int count(BoardVO param) {
		return sqlSession.selectOne("admin.board.count", param);
	}
	
	public List<BoardVO> list(BoardVO param) {
		return sqlSession.selectList("admin.board.list", param);
	}
	
	public int write(BoardVO param) {
		return sqlSession.insert("admin.board.write", param);
	}
	public BoardVO view(BoardVO param) {
		return sqlSession.selectOne("admin.board.view", param);
	}
	
	public int modify(BoardVO param) {
		return sqlSession.update("admin.board.modify", param);
	}
	public int delete(int no) {
		return sqlSession.delete("admin.board.delete", no);
	}
	public int reply(BoardVO param) {
		sqlSession.update("admin.board.updateOrderNo", param);
		return sqlSession.insert("admin.board.reply", param);
	}
	
//	public int deleteComment(CommentVO param) {
//		return sqlSession.delete("admin.board.deleteComment", param);
//	}
//	public List<CommentVO> commentList(BoardVO param) {
//		return sqlSession.selectList("admin.board.commentList", param);
//	}
//	
//	public int comment(CommentVO param) {
//		return sqlSession.insert("admin.board.comment", param);
//	}

	
	
}

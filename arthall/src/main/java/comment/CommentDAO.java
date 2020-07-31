package comment;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import admin.board.BoardVO;

@Repository
public class CommentDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	public int deleteComment(CommentVO param) {
		return sqlSession.delete("comment.deleteComment", param);
	}

	
	public List<CommentVO> commentList(CommentVO param) {
		return sqlSession.selectList("comment.commentList", param);
	}
	
	public int comment(CommentVO param) {
		return sqlSession.insert("comment.comment", param);
	}
	
	public int count(int post_no) {
		
		return sqlSession.selectOne("comment.count", post_no);
	}
	
	
}

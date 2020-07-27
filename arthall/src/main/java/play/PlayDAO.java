package play;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class PlayDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public List<PlayVO> list(PlayVO param){
		return sqlSession.selectList("play.list", param);
	}
	
	public int count(PlayVO param) {
		return sqlSession.selectOne("play.count", param);
	}
	
	public int write(PlayVO param) {
		return sqlSession.insert("play.write", param);
	}

	
}

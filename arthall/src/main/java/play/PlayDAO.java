package play;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class PlayDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	
	public int addPlay(PlayVO param) {
		return sqlSession.insert("play.addPlay", param);
	}

	
}

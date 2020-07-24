package reserv;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;



@Repository
public class ReservDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public int count(ReservVo param) {
		return sqlSession.selectOne("reserv.count", param);
	}
	
	public List<ReservVo> list(ReservVo param) {
		return sqlSession.selectList("reserv.list", param);
	}
	
	public int delete(ReservVo param) {
		return sqlSession.delete("reserv.delete", param);
	}
	
}

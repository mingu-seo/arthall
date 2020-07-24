package reserv;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;



@Repository
public class ReservDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public int count(ReservVO param) {
		return sqlSession.selectOne("reserv.count", param);
	}
	
	public List<ReservVO> list(ReservVO param) {
		return sqlSession.selectList("reserv.list", param);
	}
	
	public int delete(ReservVO param) {
		return sqlSession.delete("reserv.delete", param);
	}
	
}

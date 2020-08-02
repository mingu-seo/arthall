package reserv;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import play.PlayVO;



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
	
	// Ticket
	public List<TicketVO> ticketlist(TicketVO param) {
		return sqlSession.selectList("reserv.ticketlist", param);
	}
	
	// 시작일, 종료일 받아서 다시 조회
	
	// User 예약
	public int reservOne(ReservVO param) {
		return sqlSession.insert("reserv.reservOne", param);
	}
	
	public PlayVO play() {
		return sqlSession.selectOne("reserv.playAll");
	}
	
}

package reserv;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import play.PerformVO;
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
	
	public int cancleReserv(ReservVO param) {
		return sqlSession.update("reserv.cancleReserv", param);
	}
	
	public int cancleTicket(ReservVO param) {
		return sqlSession.update("reserv.cancleTicket", param);
	}
	
	// Ticket
	public List<TicketVO> ticketlist(TicketVO param) {
		return sqlSession.selectList("reserv.ticketlist", param);
	}
	
	// 선택된 공연 하나 가져오기
	public PlayVO play(ReservVO param) {
		return sqlSession.selectOne("reserv.playOne", param);
	}
	
	// 회차, 좌석 정보 가져오기
	public List<PerformVO> playList(ReservVO param){
		return sqlSession.selectList("reserv.playList", param);
	}
}

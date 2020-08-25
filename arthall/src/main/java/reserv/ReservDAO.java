package reserv;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import member.MemberVO;
import play.ExhibitVO;
import play.PerformVO;
import play.PlayVO;

@Repository
public class ReservDAO {
   
	@Autowired
	private SqlSessionTemplate sqlSession;
   
	// Admin
	public int count(ReservVO param) {
		return sqlSession.selectOne("reserv.count", param);
	}
   
	// 예매 목록
	public List<ReservVO> list(ReservVO param) {
		return sqlSession.selectList("reserv.list", param);
	}
     
	// 티켓 목록
	public List<TicketVO> ticketlist(TicketVO param) {
		return sqlSession.selectList("reserv.ticketlist", param);
	}
   
	// 예매 취소
	public int cancleReserv(ReservVO param) {
		return sqlSession.update("reserv.cancleReserv", param);
	}
 
	public int cancleTicket(ReservVO param) {
		return sqlSession.update("reserv.cancleTicket", param);
	}
	

	// User
	// 공연/전시
	public PlayVO play(ReservVO param) {
    	System.out.println("나는 전시공연 다오");
		return sqlSession.selectOne("reserv.playOne", param);
	}


	// 공연 회차별 정보
	public List<PerformVO> playList(ReservVO param) {
    	System.out.println("나는 공연 리스트 다오");
		return sqlSession.selectList("reserv.playList", param);
	}
   
	// 공연 가격
	public PerformVO playPrice(ReservVO param) {
    	System.out.println("나는 공연 다오");
		return sqlSession.selectOne("reserv.playPrice", param);
	}
	
  	// 전시
//   	public PlayVO playE(ReservVO param) {
//   		return sqlSession.selectOne("reserv.playEOne", param);
//    }
   	
   	// 전시 가격
    public ExhibitVO playEPrice(ReservVO param) {
    	System.out.println("나는 전시 다오");
    	return sqlSession.selectOne("reserv.playEPrice", param);
    }

	// hall
	public HallVO hall(ReservVO param) {
		return sqlSession.selectOne("reserv.hall", param);
	}
   
	// 예매 정보
	public int reservOne(ReservVO param) {
		return sqlSession.insert("reserv.reservOne", param);
	}
   
	// 예약번호 생성, 삽입
	public ReservVO reservNumber() {
		return sqlSession.selectOne("reserv.reservNumber");
	}
	
	// 티켓 정보
	public int reservTicket(TicketVO param) {
		return sqlSession.insert("reserv.reservTicket", param);
	}
	
	// 지난 공연 정보
	public List<ReservVO> reservSessPass(MemberVO member) {
	   return sqlSession.selectList("reserv.reservSessPass", member);
	}
   
	// 남은 공연 정보
	public List<ReservVO> reservSess(MemberVO member) {
		return sqlSession.selectList("reserv.reservSess", member);
	}
   
	// 결제 취소한 공연 정보
	public List<ReservVO> reservSessCancle(MemberVO member) {
		return sqlSession.selectList("reserv.reservSessCancle", member);
	}




}

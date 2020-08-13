package reserv;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import member.MemberVO;
import play.PerformVO;
import play.PlayVO;



@Repository
public class ReservDAO {
   
   @Autowired
   private SqlSessionTemplate sqlSession;
   

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
   
   // 예약 취소
   public int cancleReserv(ReservVO param) {
      return sqlSession.update("reserv.cancleReserv", param);
   }
  
   // 예약 취소에 따른 티켓 취소
   public int cancleTicket(ReservVO param) {
      return sqlSession.update("reserv.cancleTicket", param);
   }
   
   // 선택된 공연 가져오기
   public PlayVO play(ReservVO param) {
      return sqlSession.selectOne("reserv.playOne", param);
   }
   
   // 예매정보 삽입
   public int reservOne(ReservVO param) {
      return sqlSession.insert("reserv.reservOne", param);
   }
   
   // 티켓 예매 삽입
   public int reservTicket(TicketVO param) {
	   return sqlSession.insert("reserv.reservTicket", param);
   }
   
   // 회차 정보 가져오기
   public List<PerformVO> playList(ReservVO param){
      return sqlSession.selectList("reserv.playList", param);
   }
   
   // 좌석 가격 가져오기
   public PerformVO playPrice(ReservVO param){
	   return sqlSession.selectOne("reserv.playPrice", param);
   }
   
   // 좌석 개수 차감?
   public HallVO hall(ReservVO param){
      return sqlSession.selectOne("reserv.hall", param);
   }
   
   // 예약번호 생성, 삽입
   public ReservVO reservNumber() {
      return sqlSession.selectOne("reserv.reservNumber");
   }
   
   
   // 지난 공연 정보
   public List<ReservVO> reservSessPass(MemberVO member) {
	   return sqlSession.selectList("reserv.reservSessPass", member);
   }
   
   // 남은 공연 정보
   public List<ReservVO> reservSess(MemberVO member) {
	   return sqlSession.selectList("reserv.reservSess", member);
   }
}
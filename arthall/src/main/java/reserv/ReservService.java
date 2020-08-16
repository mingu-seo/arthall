package reserv;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

import member.MemberVO;
import play.ExhibitVO;
import play.PerformVO;
import play.PlayVO;

public interface ReservService {
	
	// 예매 목록
	public List<ReservVO> list(ReservVO param);	
	
	// 티켓 목록
	public List<TicketVO> ticketlist(TicketVO param);
	
	// 예매 취소
	public String cancle(String[] nono, ReservVO param);
	public String cancle(ReservVO param);
	
	// USER
	public PlayVO playOne(ReservVO param);
	
	// 멤버 정보 받아오기
	public String reservSess(Model model, MemberVO member);
	
	// 공연 회차, 좌석 정보 가져오기
	public List<PerformVO> playList(ReservVO param);


	// 결제 창 넘어갈때 좌석 정보 넘기기
	public TicketVO reservTicket(ReservVO param,TicketVO ticket);
	
	// 결제 한번에 실행하기
	public String reservOne(HttpSession sess, ReservVO param, MemberVO member, TicketVO ticket);

	
	// 전시
	public PlayVO exhibitOne(ReservVO param);
	public List<ExhibitVO> exhibitList(ReservVO param);


}

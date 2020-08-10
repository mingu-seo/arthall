package reserv;

import java.util.List;

import play.PerformVO;
import play.PlayVO;

public interface ReservService {
	
	public List<ReservVO> list(ReservVO param);
	
	public String cancle(String[] nono, ReservVO param);

	// Ticket
	public List<TicketVO> ticketlist(TicketVO param);
	
	public PlayVO playOne(ReservVO param);
	
	// 회차, 좌석 정보 가져오기
	public List<PerformVO> playList(ReservVO param);
}

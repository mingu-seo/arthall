package reserv;

import java.util.List;

import org.springframework.web.bind.annotation.RequestParam;

import play.PlayVO;

public interface ReservService {
	
	public List<ReservVO> list(ReservVO param);
	
	public String cancle(String[] nono, ReservVO param);

	// Ticket
	public List<TicketVO> ticketlist(TicketVO param);
	
	// play, member 가져오기에서 play만 가져오기
	public PlayVO playList();
	
	// User 예약
	public String reservOne(ReservVO param);
	
}

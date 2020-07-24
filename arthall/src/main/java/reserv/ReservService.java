package reserv;

import java.util.List;

import org.springframework.web.bind.annotation.RequestParam;

public interface ReservService {
	
	public List<ReservVO> list(ReservVO param);
	
	public String delete(@RequestParam("no") String[] nono, ReservVO param);

	// Ticket
	public List<TicketVO> ticketlist(TicketVO param);
	
}

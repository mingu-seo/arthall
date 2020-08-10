package reserv;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import play.PerformVO;
import play.PlayVO;


@Controller
public class User_ReservController {
	
	@Autowired
	private ReservService reservService;
	
	// 예약 폼으로 이동
	@RequestMapping("/reservForm.do")
	public String reservForm(Model model, ReservVO param) {
		System.out.println("친구야 이건 된거지?");
		PlayVO playOne = reservService.playOne(param);
		List<PerformVO> playList = reservService.playList(param);
		// 이거 perform에서 전시 시간 받아올라그랬는데 왜 안댐
		model.addAttribute("playList", playList);
		model.addAttribute("play", playOne);
		String pageName = "reserv/reservForm";
		return pageName;
	}
	
	
	
	// 결제 창으로 이동
	@RequestMapping("/payment.do")
	public String paymentForm(Model model, ReservVO param, TicketVO ticket) {
		
		System.out.println(param.getReservDate());
		System.out.println(ticket.getPriceAll());
		System.out.println(param.getPlayName());
		System.out.println(ticket.getSeatType());
		System.out.println(ticket.getSeatType1());
		System.out.println(ticket.getSeatType2());
		
		int idx, idx1, idx2, idx3;
		
		if (ticket.getSeatType() != "" & ticket.getSeatType() != null) {
			idx = ticket.getSeatType().indexOf("/");
			idx1 = ticket.getSeatType().indexOf("매");
			idx2 = ticket.getSeatType().lastIndexOf(" ");
			idx3 = ticket.getSeatType().lastIndexOf("원");
			// 이건 vip석 + 갯수+매
			System.out.println(ticket.getSeatType().substring(0, idx)+ " "+ticket.getSeatType().substring(idx+1, idx1)+"매");
			ticket.setSeatType(ticket.getSeatType().substring(0, idx)+ " "+ticket.getSeatType().substring(idx+1, idx1)+"매");
		}
		
		if (ticket.getSeatType1() != "" & ticket.getSeatType1() != null ) {
			idx = ticket.getSeatType1().indexOf("/");
			idx1 = ticket.getSeatType1().indexOf("매");
			idx2 = ticket.getSeatType1().lastIndexOf(" ");
			idx3 = ticket.getSeatType1().lastIndexOf("원");
			// 이건 r석 + 갯수+매
			System.out.println(ticket.getSeatType1().substring(0, idx)+ " "+ticket.getSeatType1().substring(idx+1, idx1)+"매");
			ticket.setSeatType1(ticket.getSeatType1().substring(0, idx)+ " "+ticket.getSeatType1().substring(idx+1, idx1)+"매");
		}
		
		idx = ticket.getSeatType2().indexOf("/");
		idx1 = ticket.getSeatType2().indexOf("매");
		idx2 = ticket.getSeatType2().lastIndexOf(" ");
		idx3 = ticket.getSeatType2().lastIndexOf("원");
		if (ticket.getSeatType2() != "" & ticket.getSeatType2() != null) {
			// 이건 s석 + 갯수+매
			System.out.println(ticket.getSeatType2().substring(0, idx)+ " "+ticket.getSeatType2().substring(idx+1, idx1)+"매");
			ticket.setSeatType2(ticket.getSeatType2().substring(0, idx)+ " "+ticket.getSeatType2().substring(idx+1, idx1)+"매");
		}
		
		// 티켓 좌석 가격은 play에서 playNo로 받아오면 될듯
		 
		
		model.addAttribute("vo", param);
		model.addAttribute("ticket", ticket);
		return "reserv/payment";
	}
	
	
}

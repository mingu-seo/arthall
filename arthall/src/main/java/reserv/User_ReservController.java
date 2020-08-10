package reserv;



import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import member.MemberVO;
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
		
		TicketVO reservTicket = reservService.reservTicket(ticket);
		
		model.addAttribute("vo", param);
		model.addAttribute("ticket", reservTicket);
		return "reserv/payment";
	}
	
	@RequestMapping("reservOne.do")
	public String myreserv(HttpSession sess, ReservVO param, MemberVO member, TicketVO ticket) {
		
		System.out.println("이 값들이 지금 필요한 값들");
		String pageName = reservService.reservOne(sess, param, member, ticket);
		System.out.println("값은 잘 들어간거?");
		
		return pageName;
	}
	
}

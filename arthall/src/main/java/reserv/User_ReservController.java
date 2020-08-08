package reserv;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import play.PlayVO;


@Controller
public class User_ReservController {
	
	@Autowired
	private ReservService reservService;
	
	// 예약 폼으로 이동
	@RequestMapping("/reservForm.do")
	public String reservOne(Model model, ReservVO param) {
		PlayVO playList = reservService.playOne(param);
		model.addAttribute("play", playList);
		String pageName = "reserv/reservForm";
		return pageName;
	}
	
	// 결제 창으로 이동
	@RequestMapping("/payment.do")
<<<<<<< HEAD
	public String paymentForm(Model model, ReservVO param, TicketVO ticket) {
		System.out.println(param.getReservDate());
		System.out.println(param.getTime());
		System.out.println(ticket.getPrice());
		System.out.println(ticket.getSeatType());
		
		
		
		model.addAttribute("vo", param);
		model.addAttribute("ticket", ticket);
		
=======
	public String paymentForm(Model moedel, ReservVO param) {

//		String pageName = "";
		System.out.println("가져온값 : "+param.getResultBox__date());
>>>>>>> branch 'master' of https://github.com/mingu-seo/arthall.git
		return "reserv/payment";
	}
	
	
}

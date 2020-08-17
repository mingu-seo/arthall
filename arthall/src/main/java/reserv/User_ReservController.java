package reserv;



import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import member.MemberVO;
import play.ExhibitVO;
import play.PerformVO;
import play.PlayVO;


@Controller
public class User_ReservController {
	
	@Autowired
	private ReservService reservService;
	
	// 공연 예약 폼으로 이동
	@RequestMapping("/reservForm.do")
	public String reservForm(Model model, ReservVO param) {
		
		PlayVO playOne = reservService.playOne(param);
		List<PerformVO> playList = reservService.playList(param);
		
		// 이거 perform에서 전시 시간 받아올라그랬는데 왜 안댐
		model.addAttribute("playList", playList);
		model.addAttribute("play", playOne);
		String pageName = "reserv/reservForm";
		
		return pageName;
	}

	// 전시 예약 폼으로 이동
	@RequestMapping("/exhibitReservForm.do")
	public String exhibitReservForm(Model model, ReservVO param) {
		System.out.println("컨트롤러 시작");
		PlayVO exhibitOne = reservService.exhibitOne(param);
		//List<ExhibitVO> exhibitList = reservService.exhibitList(param);

		//model.addAttribute("exhibitList", playList);
		model.addAttribute("play", exhibitOne);
		String pageName = "reserv/exhibitReservForm";
		System.out.println("컨트롤러 리턴");
		return pageName;
		
	}

	
	// 결제 창으로 이동
	@RequestMapping("/payment.do")
	public String paymentForm(Model model, ReservVO param, TicketVO ticket) {
		
		TicketVO reservTicket = reservService.reservTicket(param, ticket);

		model.addAttribute("vo", param);
		model.addAttribute("ticket", reservTicket);
		
		return "reserv/payment";
	}
	
	
	// 결제 후 나의 예매 페이지 이동
	@RequestMapping("reservOne.do")
	public String myreservForm(Model model, HttpSession sess, ReservVO param, MemberVO member, TicketVO ticket) {
		
		String pageName = reservService.reservOne(sess, param, member, ticket);
		
		model.addAttribute("msg", "결제 완료 되었습니다");
		model.addAttribute("url", "myreserv.do");
		
		return pageName;
	}
	
	
	// 나의 예매 페이지
	@RequestMapping("myreserv.do")
	public String myReserv(Model model, HttpSession sess) {
		
		MemberVO member = (MemberVO)sess.getAttribute("authUser");
		String pageName = reservService.reservSess(model, member);
		
		return pageName;
	}
	
	
	// 예매 취소
	@RequestMapping("cancle.do")
	public String cancle(Model model, ReservVO param) {
		
		System.out.println(param.getReservNo());
		String pageName = reservService.cancle(param);
		
		return pageName;
	}
	
}

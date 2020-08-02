package reserv;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import play.PlayVO;

@Controller
public class User_ReservController {
	
	@Autowired
	private ReservService reservService;
	
	// 공연, 전시 구분해서 페이지 보여주기
	@RequestMapping("/admin/reserv/reservForm.do")
	public String playReservForm(Model model) {
		PlayVO vo = reservService.playList();
		model.addAttribute("vo", vo);
		return "reserv/reservForm";
	}

	@RequestMapping("/admin/reserv/reserv.do")
	public String reservOne(Model moedel, ReservVO param) {

		String pageName = reservService.reservOne(param);
		return pageName;
	}
	
	
	
}

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
	

	@RequestMapping("/reservForm.do")
	public String reservOne(Model moedel, ReservVO param) {

		String pageName = "reserv/reservForm";
		return pageName;
	}
	
	@RequestMapping("/payment.do")
	public String paymentForm(Model moedel, ReservVO param) {

//		String pageName = "";
		return "reserv/payment";
	}
	
	
}

package reserv;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class User_ReservController {
	
	@Autowired
	private ReservService reservService;
	
	@RequestMapping("/admin/reserv/reservForm.do")
	public String reservForm() {
		return "reserv/reservForm";
	}

	@RequestMapping("/admin/reserv/reserv.do")
	public String reservOne(Model moedel, ReservVO param) {

		String pageName = reservService.reservOne(param);
		return pageName;
	}
	
	
}

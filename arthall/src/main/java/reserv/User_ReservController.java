package reserv;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class User_ReservController {
	
	@Autowired
	private ReservService reservService;
	
	@RequestMapping("/admin/reserv/reservForm.do")
	public String list(Model moedel, ReservVO param) {

		return "reserv/reservForm";
	}

}

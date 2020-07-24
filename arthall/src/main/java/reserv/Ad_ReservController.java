package reserv;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Ad_ReservController {

	@Autowired
	private ReservService reservService;

		
		@RequestMapping("/admin/reserv/list.do")
		public String list(Model moedel, ReservVo param) {
			List<ReservVo> list = reservService.list(param);
			
			moedel.addAttribute("vo",param);
			moedel.addAttribute("list",list);
			return "admin/reserv/list";
		}
}

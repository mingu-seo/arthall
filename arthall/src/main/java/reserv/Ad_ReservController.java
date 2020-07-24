package reserv;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class Ad_ReservController {

	@Autowired
	private ReservService reservService;

		
		@RequestMapping("/admin/reserv/list.do")
		public String list(Model moedel, ReservVO param) {
			System.out.println(param.getStype());
			System.out.println(param.getSval());
			
			List<ReservVO> list = reservService.list(param);
			
			moedel.addAttribute("vo",param);
			moedel.addAttribute("list",list);
			return "admin/reserv/list";
		}
		
		@RequestMapping("/admin/reserv/delete.do")
		public String view(Model model, @RequestParam("no") String[] nono, ReservVO param) {
			
			for (int i = 0; i < nono.length; i++) {
				System.out.println(nono[i]);
			}
			
			String pageName = reservService.delete(nono, param);

			return pageName;
		}
		
		
		// Ticket
		@RequestMapping("/admin/reserv/ticketlist.do")
		public String ticketlist(Model model, TicketVO param) {
			
			List<TicketVO> ticketlist = reservService.ticketlist(param);
			
			model.addAttribute("ticketlist",ticketlist);
			return "admin/reserv/ticketlist";
		}
		
}

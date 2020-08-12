package reserv;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class Ad_ReservController {

	@Autowired
	private ReservService reservService;

		// 예매 목록
		@RequestMapping("/admin/reserv/list.do")
		public String list(Model moedel, ReservVO param, HttpServletRequest req) {

			
			List<ReservVO> list = reservService.list(param);
			
			moedel.addAttribute("vo",param);
			moedel.addAttribute("list",list);

		
			return "admin/reserv/list";
		}
		
		
		// 예매 취소
		@RequestMapping("/admin/reserv/cancle.do")
		public String delete(@RequestParam("reservNo") String[] nono, ReservVO param) {
			
			for (int i = 0; i < nono.length; i++) {
				System.out.println(nono[i]);
			}
			
			String pageName = reservService.cancle(nono, param);

			return pageName;
		}
		
		
		// 티켓 목록
		@RequestMapping("/admin/reserv/ticketlist.do")
		public String ticketlist(Model model, TicketVO param) {
			List<TicketVO> ticketlist = reservService.ticketlist(param);
			
			model.addAttribute("ticketlist",ticketlist);
			return "admin/reserv/ticketlist";
		}
		
}

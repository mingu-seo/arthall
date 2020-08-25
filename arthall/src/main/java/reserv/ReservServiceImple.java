package reserv;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import member.MemberVO;
import play.ExhibitVO;
import play.PerformVO;
import play.PlayVO;

@Service
public class ReservServiceImple implements ReservService {
   
	@Autowired
	private ReservDAO reservDao;

	// Admin
	// 예매 목록 + 페이징처리
 	@Override
	public List<ReservVO> list(ReservVO param) {
      
 		int startRow = (param.getPage()-1) * param.getSize(); // limit 시작값
 		int totalCount = reservDao.count(param); // 총 개수
 		int totalPage = totalCount / param.getSize(); // 총 페이지 수
 		if (totalCount % param.getSize() > 0) totalPage++;
 		
 		// 목록하단 페이징 시작 페이지
 		int startPage = param.getPage()/5*5+1;
 		if (param.getPage() % 5 == 0) startPage -= 5;

 		// 목록하단 페이징 마지막 페이지
 		int endPage = startPage + 4;
 		if (endPage > totalPage) endPage = totalPage;

 		param.setStartRow(startRow);
 		param.setStartPage(startPage);
 		param.setEndPage(endPage);
 		param.setTotalCount(totalCount);
 		param.setTotalPage(totalPage);
 		List<ReservVO> list = reservDao.list(param);
      
 		return list;
 	}
   
   
 	// 티켓 목록
 	@Override
	public List<TicketVO> ticketlist(TicketVO param) {
		
	   List<TicketVO> ticketlist = reservDao.ticketlist(param);
	   
	   return ticketlist;  
	}

   
	// 예매 취소
	@Override
	public String cancle(String[] nono, ReservVO param) {
      
		for (int i = 0; i < nono.length; i++) {
			param.setReservNo(nono[i]);
			reservDao.cancleReserv(param); // 예매 목록에서
			reservDao.cancleTicket(param); // 티켓 목록에서
		}
		return "redirect:list.do";
	}
	
	
	// User
	// 공연
	@Override
	public PlayVO playOne(ReservVO param) {

		PlayVO playList = reservDao.play(param);
		
		return playList;
	}
	
	@Override
	public List<PerformVO> playList(ReservVO param) {

		List<PerformVO> playList = reservDao.playList(param);
		
		return playList;
	}
	
	
	// 예매폼에서 넘어갈 때 정보 넘기기
	@Override
	public TicketVO reservTicket(ReservVO param, TicketVO ticket) {
		
		PlayVO play = reservDao.play(param);
	   
		int idx, idx1, idx2, idx3;
		
		// 공연
	   	if (play.getPlayType() == 1) {
	   		if (ticket.getSeatType().contains("/") == true & ticket.getSeatType().contains("/0") == false) {
	   			idx = ticket.getSeatType().indexOf("/");
	   			idx1 = ticket.getSeatType().indexOf("매");
	   			idx2 = ticket.getSeatType().lastIndexOf("석");
	   			idx3 = ticket.getSeatType().lastIndexOf("원");
	   			
	   			ticket.setSeatType((ticket.getSeatType().substring(0, idx) + " " + ticket.getSeatType().substring(idx+1, idx1) + "매"));
	   		} else {
	   			ticket.setSeatType("");
	   		}

	   		if (ticket.getSeatType1().contains("/") == true & ticket.getSeatType1().contains("/0") == false) {
	   			idx = ticket.getSeatType1().indexOf("/");
	   			idx1 = ticket.getSeatType1().indexOf("매");
	   			idx2 = ticket.getSeatType1().lastIndexOf("석");
	   			idx3 = ticket.getSeatType1().lastIndexOf("원");
	   			
	   			ticket.setSeatType1(ticket.getSeatType1().substring(0, idx) + " " + ticket.getSeatType1().substring(idx+1, idx1) + "매");
	   		} else {
	   			ticket.setSeatType1("");
	   		}
	
	   		if (ticket.getSeatType2().contains("/") == true & ticket.getSeatType2().contains("/0") == false) {
	   			idx = ticket.getSeatType2().indexOf("/");
	   			idx1 = ticket.getSeatType2().indexOf("매");
	   			idx2 = ticket.getSeatType2().lastIndexOf("석");
	   			idx3 = ticket.getSeatType2().lastIndexOf("원");
	   			
	   			ticket.setSeatType2(ticket.getSeatType2().substring(0, idx) + " " + ticket.getSeatType2().substring(idx+1, idx1) + "매");
	   		} else {
	   			ticket.setSeatType2("");
	   		}

	   		if (ticket.getSeatType3().contains("/") == true & ticket.getSeatType3().contains("/0") == false) {
	   			idx = ticket.getSeatType3().indexOf("/");
	   			idx1 = ticket.getSeatType3().indexOf("매");
	   			idx2 = ticket.getSeatType3().lastIndexOf("석");
	   			idx3 = ticket.getSeatType3().lastIndexOf("원");
	   			
	   			ticket.setSeatType3(ticket.getSeatType3().substring(0, idx) + " " + ticket.getSeatType3().substring(idx+1, idx1) + "매");
	   		} else {
	   			ticket.setSeatType3("");
	   		}
	   		
	   	// 전시
	   	} else if (play.getPlayType() == 2) {
	   		if (ticket.getSeatType().contains("/") == true & ticket.getSeatType().contains("/0") == false) {
	   			idx = ticket.getSeatType().indexOf("/");
	   			idx1 = ticket.getSeatType().indexOf("매");
	   			idx2 = ticket.getSeatType().lastIndexOf(" ");
	   			idx3 = ticket.getSeatType().lastIndexOf("원");
			   
	   			ticket.setSeatType(ticket.getSeatType().substring(0, idx) + " " + ticket.getSeatType().substring(idx+1, idx1) + "매");
	   		} else {
	   			ticket.setSeatType("");
	   		}
	
	   		if (ticket.getSeatType1().contains("/") == true & ticket.getSeatType1().contains("/0") == false) {
		   		idx = ticket.getSeatType1().indexOf("/");
		   		idx1 = ticket.getSeatType1().indexOf("매");
		   		idx2 = ticket.getSeatType1().lastIndexOf(" ");
		   		idx3 = ticket.getSeatType1().lastIndexOf("원");
		   		
		   		ticket.setSeatType1(ticket.getSeatType1().substring(0, idx) + " " + ticket.getSeatType1().substring(idx+1, idx1) + "매");
		   	} else {
		   		ticket.setSeatType1("");
		   	}
	
		   	if (ticket.getSeatType2().contains("/") == true & ticket.getSeatType2().contains("/0") == false) {
		   		idx = ticket.getSeatType2().indexOf("/");
		   		idx1 = ticket.getSeatType2().indexOf("매");
		   		idx2 = ticket.getSeatType2().lastIndexOf(" ");
		   		idx3 = ticket.getSeatType2().lastIndexOf("원");
		   		
		   		ticket.setSeatType2(ticket.getSeatType2().substring(0, idx) + " " + ticket.getSeatType2().substring(idx+1, idx1) + "매");
		   	} else {
		   		ticket.setSeatType2("");
		   	}
		   	
	   }
	   return ticket;

	}

	// 예매번호/티켓번호 생성 및 정보 넘기기
	@Override
	public String reservOne(HttpSession sess, ReservVO param, MemberVO member, TicketVO ticket) {
		
		MemberVO vo = (MemberVO)sess.getAttribute("authUser");
		
		PlayVO play = reservDao.play(param);
		param.setHallName(play.getHallName());
		HallVO hall = reservDao.hall(param);
		ReservVO reservDate = reservDao.reservNumber();
		
		param.setMemberNo(vo.getNo());
		param.setName(vo.getName());
		param.setPlayNo(play.getNo());
		param.setPlayName(play.getPlayName());
		param.setHallNo(hall.getNo());
		param.setHallName(hall.getHallName());
		param.setPay(param.getPay().substring(0, param.getPay().indexOf(",")));
		param.setPrice(ticket.getPriceAll());
		param.setSeat(ticket.getSeatType()+" "+ticket.getSeatType1()+" "+ticket.getSeatType2() +" "+ticket.getSeatType3());
		param.setSeat(param.getSeat().replace("  ", " ").trim());
		param.setFilename(play.getFilename());

		if (param.getPrice().contains("원") == false) {
			param.setPrice(param.getPrice()+"원");
		} 
		param.setPrice(param.getPrice());
		

		// 예매 번호 생성
		Date date = new Date();
		
		SimpleDateFormat format2 = new SimpleDateFormat("yyyyMMdd");

		int lastReservDate = Integer.parseInt(format2.format(reservDate.getReservDate()));
		int today = Integer.parseInt(format2.format(date));

		String num1 = format2.format(date);
		String num2 = String.format("%03d", play.getNo());
		String num3 = String.format("%04d", vo.getNo());
		String num4 = "";

		if (lastReservDate == today) {
			int preFormat = Integer.parseInt(reservDate.getReservNo().substring(17))+1;
			num4 = String.format("%03d", preFormat);
		} else {
			num4 = "001";
		}
			
		if (play.getPlayType() == 1) {
			param.setReservNo("RM"+ num1 + num2 + num3 + num4);
		} else if (play.getPlayType() == 2) {
			param.setReservNo("RE" + num1 + num2 + num3 + num4);
		}
      
		reservDao.reservOne(param);
		
		PerformVO perform = reservDao.playPrice(param);
		ExhibitVO exhibit = reservDao.playEPrice(param);

		//티켓 번호 생성
		int idx, idx1, idx2, cnt, cnt1, cnt2, cnt3;
		int i = 0;
		
		// 공연
		if (play.getPlayType() == 1) {
			if (ticket.getSeatType().contains("매")) {
				idx = ticket.getSeatType().indexOf(" ");
				idx1 = ticket.getSeatType().indexOf("매");
				idx2 = ticket.getSeatType().indexOf("석");
				cnt = Integer.parseInt(ticket.getSeatType().substring(idx+1,idx1));
				for (i = 0; i < cnt; i++) {
					ticket.setSeatType(ticket.getSeatType().substring(0,idx2));
					ticket.setReservNo(param.getReservNo()+"t"+i);
					ticket.setPrice(perform.getPriceA());
					ticket.setPay(param.getPay());
					reservDao.reservTicket(ticket);
					System.out.println(i);
					System.out.println(cnt);
					System.out.println(ticket.getReservNo());
					System.out.println(ticket.getSeatType());
					System.out.println(ticket.getPay());
					System.out.println(ticket.getPrice());
				}

			}
			int j = i;
			System.out.println("하나");
			System.out.println(perform.getPriceA());
			System.out.println(perform.getPriceB());
			System.out.println(perform.getPriceC());
			System.out.println(perform.getPriceD());
			
			if (ticket.getSeatType1().contains("매")) {
				idx = ticket.getSeatType1().indexOf(" ");
				idx1 = ticket.getSeatType1().indexOf("매");
				idx2 = ticket.getSeatType1().indexOf("석");
				cnt1 = Integer.parseInt(ticket.getSeatType1().substring(idx+1,idx1));
				for (i = j; i < j+cnt1; i++) {
					ticket.setSeatType(ticket.getSeatType1().substring(0,idx2));
					ticket.setReservNo(param.getReservNo()+"t"+i);
					ticket.setPrice(perform.getPriceB());
					ticket.setPay(param.getPay());
					reservDao.reservTicket(ticket);
					System.out.println(i);
					System.out.println(j+cnt1);
					System.out.println(ticket.getReservNo());
					System.out.println(ticket.getSeatType());
					System.out.println(ticket.getPay());
					System.out.println(ticket.getPrice());
				}
			}
			j = i;
			System.out.println("둘");
			System.out.println(perform.getPriceA());
			System.out.println(perform.getPriceB());
			System.out.println(perform.getPriceC());
			System.out.println(perform.getPriceD());

			if (ticket.getSeatType2().contains("매")) {
				idx = ticket.getSeatType2().indexOf(" ");
				idx1 = ticket.getSeatType2().indexOf("매");
				idx2 = ticket.getSeatType2().indexOf("석");
				cnt2 = Integer.parseInt(ticket.getSeatType2().substring(idx+1,idx1));
				for (i = j; i < j+cnt2; i++) {
					ticket.setSeatType(ticket.getSeatType2().substring(0,idx2));
					ticket.setReservNo(param.getReservNo()+"t"+i);
					ticket.setPrice(perform.getPriceC());
					ticket.setPay(param.getPay());
					reservDao.reservTicket(ticket);
					System.out.println(i);
					System.out.println(j+cnt2);
					System.out.println(ticket.getReservNo());
					System.out.println(ticket.getSeatType());
					System.out.println(ticket.getPay());
					System.out.println(ticket.getPrice());
				}
			}
			j = i;
			System.out.println("셋");
			System.out.println(perform.getPriceA());
			System.out.println(perform.getPriceB());
			System.out.println(perform.getPriceC());
			System.out.println(perform.getPriceD());

			if (ticket.getSeatType3().contains("매")) {
				idx = ticket.getSeatType3().indexOf(" ");
				idx1 = ticket.getSeatType3().indexOf("매");
				idx2 = ticket.getSeatType3().indexOf("석");
				cnt3 = Integer.parseInt(ticket.getSeatType3().substring(idx+1,idx1));
				for (i = j; i < j+cnt3; i++) {
					ticket.setSeatType(ticket.getSeatType3().substring(0,idx2));
					ticket.setReservNo(param.getReservNo()+"t"+i);
					ticket.setPrice(perform.getPriceD());
					ticket.setPay(param.getPay());
					reservDao.reservTicket(ticket);
				}
			}
		} else if (play.getPlayType() == 2) {
			if (ticket.getSeatType().contains("매")) {
				idx = ticket.getSeatType().indexOf(" ");
				idx1 = ticket.getSeatType().indexOf("매");
				idx2 = ticket.getSeatType().indexOf(" ");
				cnt = Integer.parseInt(ticket.getSeatType().substring(idx+1,idx1));
				for (i = 0; i < cnt; i++) {
					ticket.setSeatType(ticket.getSeatType().substring(0,idx2));
					ticket.setReservNo(param.getReservNo()+"t"+i);
					ticket.setPrice(exhibit.getPriceAdult());
					ticket.setPay(param.getPay());
					reservDao.reservTicket(ticket);
				}
			}
			int j = i;

			if (ticket.getSeatType1().contains("매")) {
				idx = ticket.getSeatType1().indexOf(" ");
				idx1 = ticket.getSeatType1().indexOf("매");
				idx2 = ticket.getSeatType1().indexOf(" ");
				cnt1 = Integer.parseInt(ticket.getSeatType1().substring(idx+1,idx1));
				for (i = j; i < j+cnt1; i++) {
					ticket.setSeatType(ticket.getSeatType1().substring(0,idx2));
					ticket.setReservNo(param.getReservNo()+"t"+i);
					ticket.setPrice(exhibit.getPriceTeenager());
					ticket.setPay(param.getPay());
					reservDao.reservTicket(ticket);
				}
			}
			j = i;

			if (ticket.getSeatType2().contains("매") ) {
				idx = ticket.getSeatType2().indexOf(" ");
				idx1 = ticket.getSeatType2().indexOf("매");
				idx2 = ticket.getSeatType2().indexOf(" ");
				cnt2 = Integer.parseInt(ticket.getSeatType2().substring(idx+1,idx1));
				for (i = j; i < j+cnt2; i++) {
					ticket.setSeatType(ticket.getSeatType2().substring(0,idx2));
					ticket.setReservNo(param.getReservNo()+"t"+i);
					ticket.setPrice(exhibit.getPriceChildren());
					ticket.setPay(param.getPay());
					reservDao.reservTicket(ticket);
				}
			}	    	  
		}
		return "common/alert2";
      
	}

	
	// 예매 취소
	@Override
	public String cancle(ReservVO param) {
		
		reservDao.cancleReserv(param);
		reservDao.cancleTicket(param);
		
		return "redirect:myreserv.do";
	}
	
	@Override
	public String reservSess(Model model, MemberVO member) {
		
		List<ReservVO> reservMyPass = reservDao.reservSessPass(member);
		List<ReservVO> reservMy = reservDao.reservSess(member);
		List<ReservVO> reservMyCancle = reservDao.reservSessCancle(member);
		
		model.addAttribute("reservMyPass", reservMyPass);
		model.addAttribute("reservMy", reservMy);
		model.addAttribute("reservMyCancle", reservMyCancle);
		
		return "reserv/myreserv";
	}
}
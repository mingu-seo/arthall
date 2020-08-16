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
public class ReservServiceImple implements ReservService{
   
   @Autowired
   private ReservDAO reservDao;

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

	@Override
	public String cancle(ReservVO param) {
		reservDao.cancleReserv(param);
		reservDao.cancleTicket(param);
		return "redirect:myreserv.do";
	}

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
	
	// 결제 창 넘어갈 때 좌석 정보 넘기기, 코드 더 짧게 안되나?
	@Override
	public TicketVO reservTicket(ReservVO param, TicketVO ticket) {
	  
	   PlayVO play = reservDao.play(param);
	   
	   int idx, idx1, idx2, idx3;
	   
	   if (play.getPlayType() == 1) {
		   
		   if (ticket.getSeatType() != "" & ticket.getSeatType() != null) {
			   idx = ticket.getSeatType().indexOf("/");
			   idx1 = ticket.getSeatType().indexOf("매");
			   idx2 = ticket.getSeatType().lastIndexOf("석");
			   idx3 = ticket.getSeatType().lastIndexOf("원");
			   
			   // Vip석 + 개수 + "매수"       
			   System.out.println(ticket.getSeatType().substring(0, idx) + " " + ticket.getSeatType().substring(idx+1, idx1) + "매");
			   ticket.setSeatType(ticket.getSeatType().substring(0, idx) + " " + ticket.getSeatType().substring(idx+1, idx1) + "매");
		   }
	
		   if (ticket.getSeatType1() != "" & ticket.getSeatType1() != null ) {
	    	  idx = ticket.getSeatType1().indexOf("/");
	    	  idx1 = ticket.getSeatType1().indexOf("매");
	    	  idx2 = ticket.getSeatType1().lastIndexOf("석");
	    	  idx3 = ticket.getSeatType1().lastIndexOf("원");
	    	  // R석 + 개수 + "매"
	    	  System.out.println(ticket.getSeatType1().substring(0, idx) + " " + ticket.getSeatType1().substring(idx+1, idx1) + "매");
	    	  ticket.setSeatType1(ticket.getSeatType1().substring(0, idx) + " " + ticket.getSeatType1().substring(idx+1, idx1) + "매");
		   }
	
		   if (ticket.getSeatType2() != "" & ticket.getSeatType2() != null) {
	    	  idx = ticket.getSeatType2().indexOf("/");
	          idx1 = ticket.getSeatType2().indexOf("매");
	          idx2 = ticket.getSeatType2().lastIndexOf("석");
	          idx3 = ticket.getSeatType2().lastIndexOf("원");
	          // S석 + 개수 + 매
	          System.out.println(ticket.getSeatType2().substring(0, idx) + " " + ticket.getSeatType2().substring(idx+1, idx1) + "매");
	          ticket.setSeatType2(ticket.getSeatType2().substring(0, idx) + " " + ticket.getSeatType2().substring(idx+1, idx1) + "매");
		   }
		   
	   } else if (play.getPlayType() == 2) {
		   if (ticket.getSeatType() != "" & ticket.getSeatType() != null) {
			   idx = ticket.getSeatType().indexOf("/");
			   idx1 = ticket.getSeatType().indexOf("매");
			   idx2 = ticket.getSeatType().lastIndexOf(" ");
			   idx3 = ticket.getSeatType().lastIndexOf("원");
			   
			   // Vip석 + 개수 + "매수"       
			   System.out.println(ticket.getSeatType().substring(0, idx) + " " + ticket.getSeatType().substring(idx+1, idx1) + "매");
			   ticket.setSeatType(ticket.getSeatType().substring(0, idx) + " " + ticket.getSeatType().substring(idx+1, idx1) + "매");
		   }
	
		   if (ticket.getSeatType1() != "" & ticket.getSeatType1() != null ) {
	    	  idx = ticket.getSeatType1().indexOf("/");
	    	  idx1 = ticket.getSeatType1().indexOf("매");
	    	  idx2 = ticket.getSeatType1().lastIndexOf(" ");
	    	  idx3 = ticket.getSeatType1().lastIndexOf("원");
	    	  // R석 + 개수 + "매"
	    	  System.out.println(ticket.getSeatType1().substring(0, idx) + " " + ticket.getSeatType1().substring(idx+1, idx1) + "매");
	    	  ticket.setSeatType1(ticket.getSeatType1().substring(0, idx) + " " + ticket.getSeatType1().substring(idx+1, idx1) + "매");
		   }
	
		   if (ticket.getSeatType2() != "" & ticket.getSeatType2() != null) {
	    	  idx = ticket.getSeatType2().indexOf("/");
	          idx1 = ticket.getSeatType2().indexOf("매");
	          idx2 = ticket.getSeatType2().lastIndexOf(" ");
	          idx3 = ticket.getSeatType2().lastIndexOf("원");
	          // S석 + 개수 + 매
	          System.out.println(ticket.getSeatType2().substring(0, idx) + " " + ticket.getSeatType2().substring(idx+1, idx1) + "매");
	          ticket.setSeatType2(ticket.getSeatType2().substring(0, idx) + " " + ticket.getSeatType2().substring(idx+1, idx1) + "매");
		   }
	   }
	   return ticket;
   
	}



   // 예약번호 등 정보 넘기기
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
      param.setSeat(ticket.getSeatType()+" "+ticket.getSeatType1()+" "+ticket.getSeatType2());
      
      Date date = new Date();

      SimpleDateFormat format2 = new SimpleDateFormat("yyyyMMdd");
      
      int lastReservDate = Integer.parseInt(format2.format(reservDate.getReservDate()));
      int today = Integer.parseInt(format2.format(date));
      
      String num1 = format2.format(date);
      
      String num2 = String.format("%03d", play.getNo());
      
      String num3 = String.format("%04d", vo.getNo());
      
      String num4 = "";
      if (lastReservDate == today) {
    	 System.out.println(reservDate.getReservNo());
         int preFormat = Integer.parseInt(reservDate.getReservNo().substring(17))+1;
         System.out.println(reservDate.getReservNo().substring(17));
         System.out.println(Integer.parseInt(reservDate.getReservNo().substring(17)));
         System.out.println(preFormat);
         num4 = String.format("%03d", preFormat);
         System.out.println(num4);
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
      ExhibitVO exhibit = reservDao.exhibitPrice(param);
      int idx, idx1, idx2, cnt, cnt1, cnt2;
      
      if (play.getPlayType() == 1) {
	      System.out.println("좌석1");
	      if (ticket.getSeatType() != "") {
	    	  idx = ticket.getSeatType().indexOf(" ");
	    	  idx1 = ticket.getSeatType().indexOf("매");
	    	  idx2 = ticket.getSeatType().indexOf("석");
	    	  cnt = Integer.parseInt(ticket.getSeatType().substring(idx+1,idx1));
	    	  for (int i = 0; i < cnt; i++) {
	    		  ticket.setSeatType(ticket.getSeatType().substring(0,idx2));
	    		  ticket.setReservNo(param.getReservNo()+"t"+i);
	    		  ticket.setPrice(perform.getPriceA());
	    		  ticket.setPay(param.getPay());
	    		  reservDao.reservTicket(ticket);
	    	  }
	      }
	      System.out.println("좌석2");
	      System.out.println(ticket.getSeatType1());
	      if (ticket.getSeatType1() != "") {
	    	  System.out.println("1");
	    	  idx = ticket.getSeatType1().indexOf(" ");
	    	  System.out.println("2");
	    	  idx1 = ticket.getSeatType1().indexOf("매");
	    	  System.out.println("3");
	    	  idx2 = ticket.getSeatType1().indexOf("석");
	    	  System.out.println("4");
	    	  cnt1 = Integer.parseInt(ticket.getSeatType1().substring(idx+1,idx1));
	    	  System.out.println("5");
	    	  for (int i = 0; i < cnt1; i++) {
	    		  ticket.setSeatType(ticket.getSeatType1().substring(0,idx2));
	    		  ticket.setReservNo(param.getReservNo()+"t"+i);
	    		  ticket.setPrice(perform.getPriceB());
	    		  ticket.setPay(param.getPay());
	    		  reservDao.reservTicket(ticket);
	    	  }
	      }
	      System.out.println("좌석3");
	      if (ticket.getSeatType2() != "") {
	    	  idx = ticket.getSeatType2().indexOf(" ");
	    	  idx1 = ticket.getSeatType2().indexOf("매");
	    	  idx2 = ticket.getSeatType2().indexOf("석");
	    	  cnt2 = Integer.parseInt(ticket.getSeatType2().substring(idx+1,idx1));
	    	  for (int i = 0; i < cnt2; i++) {
	    		  ticket.setSeatType(ticket.getSeatType2().substring(0,idx2));
	    		  ticket.setReservNo(param.getReservNo()+"t"+i);
	    		  ticket.setPrice(perform.getPriceC());
	    		  ticket.setPay(param.getPay());
	    		  reservDao.reservTicket(ticket);
	    	  }
	      }
      } else if (play.getPlayType() == 2) {
    	  System.out.println("좌석1");
    	  if (ticket.getSeatType() != "") {
	    	  idx = ticket.getSeatType().indexOf(" ");
	    	  idx1 = ticket.getSeatType().indexOf("매");
	    	  idx2 = ticket.getSeatType().indexOf(" ");
	    	  cnt = Integer.parseInt(ticket.getSeatType().substring(idx+1,idx1));
	    	  for (int i = 0; i < cnt; i++) {
	    		  ticket.setSeatType(ticket.getSeatType().substring(0,idx2));
	    		  ticket.setReservNo(param.getReservNo()+"t"+i);
	    		  ticket.setPrice(exhibit.getPriceAdult());
	    		  ticket.setPay(param.getPay());
	    		  reservDao.reservTicket(ticket);
	    	  }
	      }
	      System.out.println("좌석2");
	      System.out.println(ticket.getSeatType1());
	      if (ticket.getSeatType1() != "") {
	    	  System.out.println("1");
	    	  idx = ticket.getSeatType1().indexOf(" ");
	    	  System.out.println("2");
	    	  idx1 = ticket.getSeatType1().indexOf("매");
	    	  System.out.println("3");
	    	  idx2 = ticket.getSeatType1().indexOf(" ");
	    	  System.out.println("4");
	    	  cnt1 = Integer.parseInt(ticket.getSeatType1().substring(idx+1,idx1));
	    	  System.out.println("5");
	    	  for (int i = 0; i < cnt1; i++) {
	    		  ticket.setSeatType(ticket.getSeatType1().substring(0,idx2));
	    		  ticket.setReservNo(param.getReservNo()+"t"+i);
	    		  ticket.setPrice(exhibit.getPriceTeenager());
	    		  ticket.setPay(param.getPay());
	    		  reservDao.reservTicket(ticket);
	    	  }
	      }
	      System.out.println("좌석3");
	      if (ticket.getSeatType2() != "") {
	    	  idx = ticket.getSeatType2().indexOf(" ");
	    	  idx1 = ticket.getSeatType2().indexOf("매");
	    	  idx2 = ticket.getSeatType2().indexOf(" ");
	    	  cnt2 = Integer.parseInt(ticket.getSeatType2().substring(idx+1,idx1));
	    	  for (int i = 0; i < cnt2; i++) {
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
	
	
	// 전시
	@Override
	public PlayVO exhibitOne(ReservVO param) {
		PlayVO playList = reservDao.play(param);
		return playList;
	}
		   

		  
	@Override
	public List<ExhibitVO> exhibitList(ReservVO param) {

		List<ExhibitVO> exhibitList = reservDao.exhibitList(param);
		return exhibitList;
			  
	}
		   
		   

   
   

}
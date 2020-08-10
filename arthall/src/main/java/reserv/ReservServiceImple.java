package reserv;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import member.MemberVO;
import play.PerformVO;
import play.PlayVO;


@Service
public class ReservServiceImple implements ReservService{
	
	@Autowired
	private ReservDAO reservDao;

	@Override
	public List<ReservVO> list(ReservVO param) {
		
		
		int startRow = (param.getPage()-1) * param.getSize(); // limit 시작값
		int totalCount = reservDao.count(param); // 총갯수
		System.out.println(totalCount);
		int totalPage = totalCount / param.getSize(); // 총페이지수
		if (totalCount % param.getSize() > 0) totalPage++;
		
		// 목록하단 페이징 시작페이지
		int startPage = param.getPage()/5*5+1;
		if (param.getPage() % 5 == 0) startPage -= 5;
		
		// 목록하단 페이징 마지막페이지
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

	@Override
	public String cancle(String[] nono, ReservVO param) {
		
		for (int i = 0; i < nono.length; i++) {
			param.setReservNo(nono[i]);
			System.out.println("list에서 날리기");
			reservDao.cancleReserv(param);
			System.out.println("ticket에서 날리기");
			reservDao.cancleTicket(param);
			
		}
		
		return "redirect:list.do";
	}

	
	// Ticket
	@Override
	public List<TicketVO> ticketlist(TicketVO param) {
		List<TicketVO> ticketlist = reservDao.ticketlist(param);
		return ticketlist;
	}

	// 결제 창 넘어갈때 좌석 정보 넘기기
	@Override
	public TicketVO reservTicket(TicketVO ticket) {
int idx, idx1, idx2, idx3;
		
		if (ticket.getSeatType() != "" & ticket.getSeatType() != null) {
			idx = ticket.getSeatType().indexOf("/");
			idx1 = ticket.getSeatType().indexOf("매");
			idx2 = ticket.getSeatType().lastIndexOf(" ");
			idx3 = ticket.getSeatType().lastIndexOf("원");
			// 이건 vip석 + 갯수+매
			System.out.println(ticket.getSeatType().substring(0, idx)+ " "+ticket.getSeatType().substring(idx+1, idx1)+"매");
			ticket.setSeatType(ticket.getSeatType().substring(0, idx)+ " "+ticket.getSeatType().substring(idx+1, idx1)+"매");
		}
		
		if (ticket.getSeatType1() != "" & ticket.getSeatType1() != null ) {
			idx = ticket.getSeatType1().indexOf("/");
			idx1 = ticket.getSeatType1().indexOf("매");
			idx2 = ticket.getSeatType1().lastIndexOf(" ");
			idx3 = ticket.getSeatType1().lastIndexOf("원");
			// 이건 r석 + 갯수+매
			System.out.println(ticket.getSeatType1().substring(0, idx)+ " "+ticket.getSeatType1().substring(idx+1, idx1)+"매");
			ticket.setSeatType1(ticket.getSeatType1().substring(0, idx)+ " "+ticket.getSeatType1().substring(idx+1, idx1)+"매");
		}
		
		idx = ticket.getSeatType2().indexOf("/");
		idx1 = ticket.getSeatType2().indexOf("매");
		idx2 = ticket.getSeatType2().lastIndexOf(" ");
		idx3 = ticket.getSeatType2().lastIndexOf("원");
		if (ticket.getSeatType2() != "" & ticket.getSeatType2() != null) {
			// 이건 s석 + 갯수+매
			System.out.println(ticket.getSeatType2().substring(0, idx)+ " "+ticket.getSeatType2().substring(idx+1, idx1)+"매");
			ticket.setSeatType2(ticket.getSeatType2().substring(0, idx)+ " "+ticket.getSeatType2().substring(idx+1, idx1)+"매");
		}
		return ticket;
	}

	@Override
	public PlayVO playOne(ReservVO param) {
		PlayVO playList = reservDao.play(param);
		return playList;
	}

	@Override
	public String reservOne(HttpSession sess, ReservVO param, MemberVO member, TicketVO ticket) {
		MemberVO vo = (MemberVO)sess.getAttribute("authUser");
		PlayVO play = reservDao.play(param);
		param.setHallName(play.getHallName());
		
		HallVO hall = reservDao.hall(param);
		
		param.setMemberNo(vo.getNo());
		param.setName(vo.getName());
		param.setPlayNo(play.getNo());
		param.setPlayName(play.getPlayName());
		param.setHallNo(hall.getNo());
		param.setHallName(hall.getHallName());
		
		System.out.println(param.getPay().getClass().getName());
		System.out.println(param.getPay().length());
		param.setPay(param.getPay().substring(0, param.getPay().indexOf(",")));
		System.out.println(param.getPay());
		System.out.println("pay 수정 끝");
		
		System.out.println("playType 값은? "+ play.getPlayType());
		Date date = new Date();
		if (play.getPlayType() == 1) {
			System.out.println("여기까지는 들어오니?");
			param.setReservNo("RM"+date.getTime());
			System.out.println("이건 끝나니?");
		} else if(play.getPlayType() == 2) {
			param.setReservNo("RE"+date.getTime());
		}
		
		
		System.out.println(param.getReservNo()); // 없는게 맞음
		System.out.println(param.getMemberNo()); // 나옴
		System.out.println(param.getName()); // 나옴
		System.out.println(param.getReservDate()); //	inputbox의 이름을 pay로 바꾸면 ,로 끊어서 나옴, 이거 js 좀 봐야할듯
		System.out.println(param.getPlayNo()); // 나옴
		System.out.println(param.getPlayName()); // 나옴
		System.out.println(param.getPlayDate()); //	inputbox의 이름을 pay로 바꾸면 ,로 끊어서 나옴, 이거 js 좀 봐야할듯
		System.out.println(param.getTime()); //	inputbox의 이름을 pay로 바꾸면 ,로 끊어서 나옴, 이거 js 좀 봐야할듯
		System.out.println(param.getHallNo()); // 나옴
		System.out.println(param.getHallName()); // 나옴
		System.out.println(param.getPay()); // 나옴
		
		System.out.println("넣을게");
		reservDao.reservOne(param);
		System.out.println("잘 들어갔어?");
		
		
		
		
		return "index";
	}

	@Override
	public List<PerformVO> playList(ReservVO param) {
		List<PerformVO> playList = reservDao.playList(param);
		return playList;
	}
//
//	@Override
//	public HallVO hall(ReservVO param) {
//		HallVO hall = reservDao.hall(param);
//		return hall;
//	}


}

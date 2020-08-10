package reserv;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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

}

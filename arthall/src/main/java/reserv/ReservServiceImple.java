package reserv;

import java.util.List;
import java.sql.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


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
	public String delete(String[] nono, ReservVO param) {
		
		for (int i = 0; i < nono.length; i++) {
			param.setNo(nono[i]);
			reservDao.delete(param);
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
	public String reservOne(ReservVO param) {
		
		param.setNo("m333333");
		param.setRuntime(2);
		param.setPlayDay(java.sql.Date.valueOf("2020-07-09"));
		// session에서 가져올 값들을 미리 넣어서 실험해봄
		param.setName("수민스똑똑이"); // 예약자명
		param.setPlayNo("m123255"); // 공연번호
		param.setPlayName("얍!"); // 공연명
		param.setHallNo(1); // 홀번호
		
		
		reservDao.reservOne(param);
		
		return "admin/reserv/list";
	}

}

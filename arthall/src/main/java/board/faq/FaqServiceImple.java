package board.faq;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class FaqServiceImple implements FaqService {

	@Autowired
	private FaqDAO faqDao;
	
	@Override
	public List<FaqVO> list(FaqVO param) {
		System.out.println("잘들어가고 서비스고");
		// TODO Auto-generated method stub
		int startRow = (param.getPage()-1) * param.getSize(); // limit 시작값
		int totalCount = faqDao.count(param); // 총갯수
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
		
		List<FaqVO> list = faqDao.list(param);
		
		return list;
	}

}

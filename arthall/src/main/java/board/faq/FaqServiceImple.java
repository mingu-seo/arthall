package board.faq;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

@Service
public class FaqServiceImple implements FaqService {

	@Autowired
	private FaqDAO faqDao;
	
	@Override
	public List<FaqVO> list(FaqVO param) {
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
	
	@Override
	public String write(HttpServletRequest req, FaqVO param, MultipartFile file) {
		//HttpSession sess = req.getSession();
		//AdminVO sessVo = (AdminVO)sess.getAttribute("authUser");
		param.setWriter("임한철");
		
		// 파일 저장
		/*MyFileRenamePolicy fu = new MyFileRenamePolicy();
		fu.fileUpload(file, req.getRealPath("/upload/article/"));
		param.setFilename(fu.fileName);
		*/
		String pageName = "";
		int r = faqDao.write(param);
		pageName = "redirect:faq.do";
		
		System.out.println("추가된 번호 : " + r);
		 /*else {
			req.setAttribute("emptyTitle", true);
			pageName = "admin/board/faq/index";
		}*/
		return pageName;
	}

	@Override
	public FaqVO view(FaqVO param) {
		
		return faqDao.view(param);
	}
	
	@Override
	public String modify(FaqVO param) {
		
		faqDao.view(param);
		faqDao.modify(param);
		
		return "redirect:index.do";
	}

	@Override
	public String delete(String[] param) {
		
		for (int i = 0 ; i < param.length ;i++) {
			faqDao.delete(Integer.parseInt(param[i]));
		}
		
		return "redirect:index.do";
	}
	
	

}

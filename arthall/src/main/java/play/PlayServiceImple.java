package play;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import util.FileUtil;

@Service
public class PlayServiceImple implements PlayService {

	@Autowired PlayDAO playDao;
	
	@Override
	public List<PlayVO> list(PlayVO param) {
		
		int startRow = (param.getPage()-1) * param.getSize(); //limit 시작값
		int totalCount = playDao.count(param); // 총갯수
		int totalPage = totalCount / param.getSize(); // 총 페이지수
		if (totalCount % param.getSize() > 0) totalPage++;
		
		// 목록 하단 페이징 시작페이지
		int startPage = param.getPage()/5*5+1;
		if (param.getPage() % 5 == 0) startPage -= 5;
		
		// 목록 하단 페이징 마지막페이지
		int endPage = startPage + 4;
		if (endPage > totalPage) endPage = totalPage;
		
		
		param.setStartRow(startRow);
		param.setStartPage(startPage);
		param.setEndPage(endPage);
		param.setTotalCount(totalCount);
		param.setTotalPage(totalPage);
	
		// 모두 list로 집어넣는다.
		List<PlayVO> list = playDao.list(param);
		
		return list;
	}
	
	
	@Override
	public String write(HttpServletRequest req, PlayVO param, MultipartFile file) {
		// *** FaqServiceImple
		//HttpSession sess = req.getSession();
		//AdminVO sessVo = (AdminVO)sess.getAttribute("authUser");
		
		// 파일 저장
		/*MyFileRenamePolicy fu = new MyFileRenamePolicy();
		fu.fileUpload(file, req.getRealPath("/upload/article/"));
		param.setFilename(fu.fileName);
		*/
		System.out.println(param.getPlayName());
		System.out.println("1@@@@@@@@@@@@@@@@@@@@@@@@@");
		String pageName = "";
		System.out.println("2@@@@@@@@@@@@@@@@@@@@@@@@@");
		System.out.println(param.getStartDate().getClass().getName());
		// 파일 저장
		FileUtil fu = new FileUtil();
									//파일 경로 지정 필요 경로 : webapp 이하
		fu.fileUpload(file, req.getRealPath("/upload/play/"));
		param.setFileName(fu.fileName);
		
		int r = playDao.write(param);
		
		System.out.println("3@@@@@@@@@@@@@@@@@@@@@@@@@");
		pageName = "redirect:list.do";
//		pageName = "admin/play/list.do";
		System.out.println("추가된 번호 : " + r);
		 /*else {
			req.setAttribute("emptyTitle", true);
			pageName = "admin/board/faq/index";
		}*/
		return pageName;
	}


	@Override
	public String delete(int[] check, PlayVO param) {
		
		for(int i = 0; i < check.length; i++) {
			param.setNo(check[i]);
			playDao.delete(param);
		}
		
		return "redirect:list.do";
	}

}

package board.notice;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import util.FileUtil;




@Service
public class NoticeServiceImple implements NoticeService {


	@Autowired
	private NoticeDAO noticeDao;
	
	@Override
	public List<NoticeVO> list(NoticeVO param) {
		
		int startRow =(param.getPage()-1) * param.getSize();
		int totalCount = noticeDao.count(param);
		int totalPage = totalCount / param.getSize();
		if (totalCount % param.getSize() > 0) totalPage++;
		
		int startPage = param.getPage()/5*5+1;
		if (param.getPage() % 5 == 0) startPage -= 5;
		
		int endPage = startPage + 4;
		if (endPage > totalPage) endPage = totalPage;
	
		
		param.setStartRow(startRow);
		param.setStartPage(startPage);
		param.setEndPage(endPage);
		param.setTotalCount(totalCount);
		param.setTotalPage(totalPage);

		
		List<NoticeVO> list = noticeDao.list(param);
		
		return list;
	}

	@Override
	public String write(HttpServletRequest req, NoticeVO param, MultipartFile file) {
		
		param.setWriter("황동민");
		
//		//파일을 저장
		FileUtil fu = new FileUtil();
		fu.fileUpload(file, req.getRealPath("/upload/board/notice/"));
		param.setFilename(fu.fileName);
		
		String pageName = "";
		int r = noticeDao.write(param);
		if (r > 0) {
			pageName = "redirect:list.do";
			
		} else {
			req.setAttribute("emptyTitle", true);
		
			pageName = "board/notice/writeForm";
		}
		return pageName;
	
	}

	@Override
	public NoticeVO view(NoticeVO param) {
		
		NoticeVO vo = noticeDao.view(param);
		vo.setContent(noticeDao.viewContent(param));
		//return noticeDao.view(param);
		return vo;
	}

	@Override
	public String modify(NoticeVO param) {
		
		noticeDao.view(param);
		noticeDao.modify(param);
		
		return "redirect:list.do";
	}

	@Override
	public String delete(String[] param) {
		for (int i = 0; i< param.length; i++) {
			noticeDao.delete(Integer.parseInt(param[i]));
		}
		return "redirect:list.do";
	}

	@Override
	public NoticeVO view_img(NoticeVO param) {
		
		NoticeVO vo = noticeDao.view_img(param);
		noticeDao.readCnt(vo);
		return noticeDao.view_img(param);
	}




	

	

	




}

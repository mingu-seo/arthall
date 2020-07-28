package board.news;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import admin.AdminVO;
import board.notice.NoticeVO;
import util.FileUtil;




@Service
public class NewsServiceImple implements NewsService {


	@Autowired
	private NewsDAO newsDao;
	
	@Override
	public List<NewsVO> list(NewsVO param) {
		
		int startRow =(param.getPage()-1) * param.getSize();
		int totalCount = newsDao.count(param);
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

		
		List<NewsVO> list = newsDao.list(param);
		
		return list;
	}

	@Override
	public String write(HttpServletRequest req, NewsVO param, MultipartFile file,AdminVO aparam) {
	
		HttpSession sess = req.getSession();
		AdminVO sessVo = (AdminVO)sess.getAttribute("authAdmin");
		aparam.setId(sessVo.getId());
		aparam.setName(sessVo.getName());
		param.setWriter(sessVo.getId());//	 admin id 받아옴
		
		
		
//		//파일을 저장
		FileUtil fu = new FileUtil();
		fu.fileUpload(file, req.getRealPath("/upload/board/news/"));
		param.setFilename(fu.fileName);
		
		String pageName = "";
		int r = newsDao.write(param);
		if (r > 0) {
			pageName = "redirect:list.do";
			
		} else {
			req.setAttribute("emptyTitle", true);
		
			pageName = "board/news/writeForm";
		}
		return pageName;
	
	}

	@Override
	public NewsVO view(NewsVO param) {
		
		NewsVO vo = newsDao.view(param);
		vo.setContent(newsDao.viewContent(param));
		//return noticeDao.view(param);
		return vo;
	}

	@Override
	public String modify(HttpServletRequest req, NewsVO param, MultipartFile file,AdminVO aparam) {
		
		HttpSession sess = req.getSession();
		AdminVO sessVo = (AdminVO)sess.getAttribute("authAdmin");
		aparam.setId(sessVo.getId());
		aparam.setName(sessVo.getName());
		param.setWriter(sessVo.getId());
		
		newsDao.view(param);
		newsDao.modify(param);
		
	//	newsDao.view(param);
//		newsDao.modify(param);
		
		FileUtil fu = new FileUtil();
		fu.fileUpload(file, req.getRealPath("/upload/board/news/"));
		param.setFilename(fu.fileName);
		
		
		String pageName = "";
		int r = newsDao.modify(param);
		if (r > 0) {
			pageName = "redirect:list.do";
			
		} else {
			req.setAttribute("emptyTitle", true);
		
			pageName = "board/news/writeModify";
		}
		return pageName;
		
		
	}

	@Override
	public String delete(String[] param) {
		for (int i = 0; i< param.length; i++) {
			newsDao.delete(Integer.parseInt(param[i]));
		}
		return "redirect:list.do";
	}

	@Override
	public NewsVO view_img(NewsVO param) {
		
		NewsVO vo = newsDao.view_img(param);
		newsDao.readCnt(vo);
		return newsDao.view_img(param);
	}




	

	

	




}

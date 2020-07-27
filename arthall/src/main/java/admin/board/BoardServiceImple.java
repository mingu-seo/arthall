package admin.board;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

@Service
public class BoardServiceImple implements BoardService {

	@Autowired
	private BoardDAO boardDao;
	
	@Override
	public List<BoardVO> list(BoardVO param) {
		int startRow = (param.getPage()-1) * param.getSize(); // limit 시작값
		int totalCount = boardDao.count(param); // 총갯수
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
		
		List<BoardVO> list = boardDao.list(param);
		
		return list;
	}
	
	@Override
	public String write(HttpServletRequest req, BoardVO param, MultipartFile file) {
		//HttpSession sess = req.getSession();
		//AdminVO sessVo = (AdminVO)sess.getAttribute("authUser");
		param.setWriter("admin");
		
		// 파일 저장
		/*MyFileRenamePolicy fu = new MyFileRenamePolicy();
		fu.fileUpload(file, req.getRealPath("/upload/article/"));
		param.setFilename(fu.fileName);
		*/
		String pageName = "";
		int r = boardDao.write(param);
		pageName = "redirect:list.do";
		
		System.out.println("추가된 번호 : " + r);
		 /*else {
			req.setAttribute("emptyTitle", true);
			pageName = "admin/board/faq/index";
		}*/
		return pageName;
	}

	@Override
	public BoardVO view(BoardVO param) {
		
		return boardDao.view(param);
	}
	
	@Override
	public String modify(BoardVO param) {
		
		boardDao.view(param);
		boardDao.modify(param);
		
		return "redirect:list.do";
	}

	@Override
	public String delete(String[] param) {
		
		for (int i = 0 ; i < param.length ;i++) {
			boardDao.delete(Integer.parseInt(param[i]));
		}
		
		return "redirect:list.do";
	}

	@Override
	public String reply(HttpServletRequest req, BoardVO param, MultipartFile file) {
		//HttpSession sess = req.getSession();
		//AdminVO sessVo = (AdminVO)sess.getAttribute("authUser");
		param.setWriter("admin");
		
		// 파일 저장
		/*MyFileRenamePolicy fu = new MyFileRenamePolicy();
		fu.fileUpload(file, req.getRealPath("/upload/article/"));
		param.setFilename(fu.fileName);
		*/
		
		String pageName = "";
		int r = boardDao.reply(param);
		pageName = "redirect:list.do";
		
		System.out.println("추가된 번호 : " + r);
		 /*else {
			req.setAttribute("emptyTitle", true);
			pageName = "admin/board/faq/index";
		}*/
		return pageName;
	}

	@Override
	public List<CommentVO> commentList(BoardVO param) {
		
		List<CommentVO> list = boardDao.commentList(param);
		
		return list;
	}

	@Override
	public String comment(HttpServletRequest req, CommentVO param) {
		boardDao.comment(param);
		return "redirect:view.do?no="+param.getPost_no();
	}

	@Override
	public int deleteComment(CommentVO param) {
		return boardDao.deleteComment(param);
	}
	
	

}

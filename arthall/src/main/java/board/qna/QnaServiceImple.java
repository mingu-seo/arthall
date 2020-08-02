	package board.qna;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import admin.AdminVO;
import util.FileUtil;

@Service
public class QnaServiceImple implements QnaService {

	@Autowired
	private QnaDAO qnaDao;

	public List<QnaVO> list(QnaVO param) {

		int startRow = (param.getPage() - 1) * param.getSize(); // limit 시작값
		int totalCount = qnaDao.count(param); // 총갯수
		int totalPage = totalCount / param.getSize(); // 총페이지수
		if (totalCount % param.getSize() > 0)
			totalPage++;

		// 목록하단 페이징 시작페이지
		int startPage = param.getPage() / 5 * 5 + 1;
		if (param.getPage() % 5 == 0)
			startPage -= 5;

		// 목록하단 페이징 마지막페이지
		int endPage = startPage + 4;
		if (endPage > totalPage)
			endPage = totalPage;

		param.setStartRow(startRow);
		param.setStartPage(startPage);
		param.setEndPage(endPage);
		param.setTotalCount(totalCount);
		param.setTotalPage(totalPage);

		List<QnaVO> list = qnaDao.list(param);

		return list;

	}

	@Override
	public String write(HttpServletRequest req, QnaVO param, MultipartFile file) {
		/*HttpSession sess = req.getSession();
		AdminVO sessVo = (AdminVO)sess.getAttribute("authAdmin");
		param.setWriter(sessVo.getId());*/
		int gno = 0;

		// 파일 저장
		FileUtil fu = new FileUtil();
		fu.fileUpload(file, req.getRealPath("/upload/board/qna/"));
		param.setFilename(fu.fileName);
		param.setFilename_org(file.getOriginalFilename());
		
		String pageName = "";

		gno = qnaDao.throwLastGno() + 1;

		param.setGno(gno);
		param.setOno(0);
		param.setNested(0);

		qnaDao.write(param);
		pageName = "redirect:index.do";

		/*
		 * else { req.setAttribute("emptyTitle", true); pageName =
		 * "admin/board/faq/index"; }
		 */

		return pageName;
	}

	
	
	@Override
	public QnaVO view(int no, int flag) {
		QnaVO vo = qnaDao.view(no);
		if (flag == 1) { //1이면 유저 2면 관리자
			qnaDao.readCnt(no);
		}
		return vo;
	}

	@Override
	public int answer(QnaVO param) { // 유저랑 기능을 나누려면 1,2 로 플래그 세워주면 쌉가능
		// HttpSession sess = req.getSession();
		// AdminVO sessVo = (AdminVO)sess.getAttribute("authUser");
		param.setWriter("답변자1");
		
		qnaDao.aUpdate(param);
		
		param.setNested(param.getNested() + 1);
		param.setOno(param.getOno() + 1);

		qnaDao.write(param);

		return 0;
	}
	
	// 수정
	@Override
	public String modify(HttpServletRequest req, QnaVO param, MultipartFile file) {
		FileUtil fu = new FileUtil();
		fu.fileUpload(file, req.getRealPath("/upload/board/qna/"));
		
		//String flag = param.ge
		qnaDao.modify(param);
		System.out.println(param.getFilename());
		if (fu.fileName != null) { // 널이면 없는거
			param.setFilename(fu.fileName); 
			param.setFilename_org(file.getOriginalFilename());
			qnaDao.modifyFile(param);
		} else if(param.getFilename().equals("noupdate")) {
			param.setFilename(null); 
			param.setFilename_org(null);
			qnaDao.modifyFile(param);
		}
		
		
		return "redirect:index.do";
	}
	
	@Override
	public String delete(String[] param) {
		
		for (int i = 0 ; i < param.length ;i++) {
			qnaDao.delete(Integer.parseInt(param[i]));
		}
			
		return "redirect:index.do";
	}

}

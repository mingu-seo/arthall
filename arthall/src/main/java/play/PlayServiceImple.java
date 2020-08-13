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
	
		// 모두 list로
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
		String pageName = "";

		// 파일 저장
		FileUtil fu = new FileUtil();
		fu.fileUpload(file, req.getRealPath("/upload/play/"));
		param.setFilename(fu.fileName);
		
		int r = playDao.write(param);
		
		pageName = "redirect:list.do";
		System.out.println("추가된 번호 : " + r);
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


	@Override
	public String modify(HttpServletRequest req, PlayVO param, MultipartFile file) {
		String pageName = "";

		// 파일 저장
		FileUtil fu = new FileUtil();
		fu.fileUpload(file, req.getRealPath("/upload/play/"));
		param.setFilename(fu.fileName);
		
		int r = playDao.modify(param);
		
		pageName = "redirect:list.do";
		System.out.println("수정된 번호 : " + r);
		return pageName;
	}


	@Override
	public PlayVO modifyView(PlayVO param) {
		PlayVO mv = playDao.modifyView(param);
		
		return mv;
	}


	@Override
	public List<PerformVO> listP(PerformVO param) {
		
		int startRow = (param.getPage()-1) * param.getSize(); //limit 시작값
		int totalCount = playDao.countP(param); // 총갯수
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
		List<PerformVO> list = playDao.listP(param);
		
//		for (int i = 0 ; i < list.size();i++) {
//			System.out.println(list.get(i).getFilename());
//		}
		
		return list;
	}


	@Override
	public String writeP(HttpServletRequest req, PerformVO param, MultipartFile file) {
		String pageName = "";

		// 파일 저장
		FileUtil fu = new FileUtil();
		fu.fileUpload(file, req.getRealPath("/upload/play/"));
		param.setFilename(fu.fileName);
		
		int r = playDao.writeP(param);
		
		pageName = "redirect:perform.do";
		System.out.println("추가된 번호 : " + r);
		return pageName;
	}


	@Override
	public String deleteP(int[] check, PerformVO param) {
		
		for(int i = 0; i < check.length; i++) {
			param.setNo(check[i]);
			playDao.deleteP(param);
		}
		
		return "redirect:perform.do";
	}


	@Override
	public String modifyP(HttpServletRequest req, PerformVO param, MultipartFile file) {
		String pageName = "";

		// 파일 저장
		FileUtil fu = new FileUtil();
		fu.fileUpload(file, req.getRealPath("/upload/play/"));
		param.setFilename(fu.fileName);
		
		int r = playDao.modifyP(param);
		
		pageName = "redirect:perform.do";
		System.out.println("수정된 번호 : " + r);
		return pageName;
	}


	@Override
	public PerformVO modifyViewP(PerformVO param) {
		PerformVO mv = playDao.modifyViewP(param);
		return mv;
	}


	@Override
	public List<ExhibitVO> listE(ExhibitVO param) {
		
		int startRow = (param.getPage()-1) * param.getSize(); //limit 시작값
		int totalCount = playDao.countE(param); // 총갯수
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
		List<ExhibitVO> list = playDao.listE(param);
		
//		for (int i = 0 ; i < list.size();i++) {
//			System.out.println(list.get(i).getFilename());
//		}
		
		return list;
	}


	@Override
	public String writeE(HttpServletRequest req, ExhibitVO param, MultipartFile file) {
		String pageName = "";

		// 파일 저장
		FileUtil fu = new FileUtil();
		fu.fileUpload(file, req.getRealPath("/upload/play/"));
		param.setFilename(fu.fileName);
		
		int r = playDao.writeE(param);
		
		pageName = "redirect:exhibit.do";
		System.out.println("추가된 번호 : " + r);
		return pageName;
	}


	@Override
	public String deleteE(int[] check, ExhibitVO param) {
		
		for(int i = 0; i < check.length; i++) {
			param.setNo(check[i]);
			playDao.deleteE(param);
		}
		
		return "redirect:exhibit.do";
	}


	@Override
	public String modifyE(HttpServletRequest req, ExhibitVO param, MultipartFile file) {
		String pageName = "";

		// 파일 저장
		FileUtil fu = new FileUtil();
		fu.fileUpload(file, req.getRealPath("/upload/play/"));
		param.setFilename(fu.fileName);
		
		int r = playDao.modifyE(param);
		
		pageName = "redirect:exhibit.do";
		System.out.println("수정된 번호 : " + r);
		return pageName;
	}


	@Override
	public ExhibitVO modifyViewE(ExhibitVO param) {
		ExhibitVO mv = playDao.modifyViewE(param);
		return mv;
	}



}

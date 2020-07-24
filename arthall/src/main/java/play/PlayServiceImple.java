package play;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
	public String addPlay(PlayVO param) {
//		// 파일 저장  - 파라미터에 MultipartFile file 추가
//		FileUtil fu = new FileUtil();
//		fu.fileUpload(file, req.getRealPath("/upload/article/"));
//		param.setFilename(fu.fileName);
		// '쓰기' 페이지로 . . . .
//		String pageName = "";
			playDao.addPlay(param);
		return "redirect:list.do";
	}

}

package board.gallery;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Ad_galleryContoller {
	
	@RequestMapping("/admin/board/gallery/list.do")
	public String list() {
		
		return "admin/board/gallery/list";
		
	}

}

package play;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class User_PlayController {

	@Autowired
	PlayService playService;
	
	@RequestMapping("play/performList.do")
	public String performList(Model model, PlayVO param) {
		List<PlayVO> performList = playService.performList(param);
		
		model.addAttribute("vo", param);
		model.addAttribute("performList", performList);
		System.out.println(param.getStype());
		return "play/performList";
	}
	
	@RequestMapping("play/performInfo.do")
	public String performInfo() {
		return "play/performInfo";
	}
	
	@RequestMapping("play/exhibitList.do")
	public String exhibitList(Model model, PlayVO param) {
		List<PlayVO> exhibitList = playService.exhibitList(param);
		
		model.addAttribute("vo", param);
		model.addAttribute("exhibitList", exhibitList);
		System.out.println(param.getStype());
		return "play/exhibitList";
	}
	
}

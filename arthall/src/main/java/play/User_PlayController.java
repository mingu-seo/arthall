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
		List<PlayVO> list = playService.list(param);
		
		model.addAttribute("vo", param);
		model.addAttribute("list", list);
		System.out.println(param.getStype());
		return "play/performList";
	}
}

package play;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class User_PlayController {

	@Autowired
	PlayService playservice;
	
	@RequestMapping("play/performList.do")
	public String performList() {
		return "play/performList";
	}
}

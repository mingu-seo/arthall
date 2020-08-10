package play;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class Ad_PlayController {

	@Autowired
	private PlayService playService;

	
//	PLAY
	
	@RequestMapping("/admin/play/list.do")
	public String list(Model model, PlayVO param) {
		List<PlayVO> list = playService.list(param);
		
		model.addAttribute("vo", param);
		model.addAttribute("list", list);
		
		return "admin/play/list";
	}
	
	
	@RequestMapping("/admin/play/writeForm.do")
	public String writeForm(HttpServletRequest req) {
		return "admin/play/writeForm";
	}
	
	@RequestMapping("/admin/play/write.do")
	public String write(HttpServletRequest req, PlayVO param, @RequestParam("filename_tmp") MultipartFile file) {
		System.out.println(param.getPlayType());
		String pageName = playService.write(req, param, file);
		System.out.println(param.getPlayName());
		
		return pageName;
	}
	
	@RequestMapping("/admin/play/delete.do")
	public String deleteCheck(@RequestParam("no") int[] check, PlayVO param) {
		for (int i = 0; i < check.length; i++) {
			System.out.println(check[i]);
		}
		String pageName = playService.delete(check, param);
		
		return pageName;
	}

	@RequestMapping("/admin/play/fileView.do")
	public String fileView(Model model,PlayVO param) {
		model.addAttribute("vo",param);
		
		return "admin/play/fileView";
	}
	
	@RequestMapping("/admin/play/modifyForm.do")
	public String modifyView(Model model, PlayVO param) {
		model.addAttribute("vo", playService.modifyView(param));
		
		return "admin/play/modifyForm";
	}
	
	@RequestMapping("/admin/play/modify.do")
	public String modify(HttpServletRequest req, PlayVO param, @RequestParam("filename_tmp") MultipartFile file) {
		String pageName = playService.modify(req, param, file);
		System.out.println(param.getNo());
		return pageName;
	}
	
//	PERFORM
	
	@RequestMapping("/admin/play/perform.do")
	public String listPerform(Model model, PerformVO param) {
		List<PerformVO> list = playService.listP(param);
		
		model.addAttribute("vo", param);
		model.addAttribute("list", list);
//		for (int i = 0 ; i < list.size();i++) {
//			System.out.println(list.get(i).getFileName());
//		}
//		
//		System.out.println(param.getStype());
		return "admin/play/perform";
	}
	
	@RequestMapping("/admin/play/performWriteForm.do")
	public String performWriteForm(HttpServletRequest req) {
		return "admin/play/performWriteForm";
	}
	
	@RequestMapping("/admin/play/writeP.do")
	public String writeP(HttpServletRequest req, PerformVO param, @RequestParam("filename_tmp") MultipartFile file) {
		String pageName = playService.writeP(req, param, file);
		
		return pageName;
	}	
	@RequestMapping("/admin/play/performModifyForm.do")
	public String modifyViewP(Model model, PerformVO param) {
		model.addAttribute("vo", playService.modifyViewP(param));
		
		return "admin/play/performModifyForm";
	}
		
	@RequestMapping("/admin/play/modifyP.do")
	public String modifyP(HttpServletRequest req, PerformVO param, @RequestParam("filename_tmp") MultipartFile file) {
		String pageName = playService.modifyP(req, param, file);
		return pageName;
	}

	@RequestMapping("/admin/play/deleteP.do")
	public String deleteCheckP(@RequestParam("no") int[] check, PerformVO param) {
		for (int i = 0; i < check.length; i++) {
			System.out.println(check[i]);
		}
		String pageName = playService.deleteP(check, param);
		
		return pageName;
	}
	
//	EXHIBIT
	
	@RequestMapping("/admin/play/exhibit.do")
	public String listExhibit(Model model, ExhibitVO param) {
		List<ExhibitVO> list = playService.listE(param);
		
		model.addAttribute("vo", param);
		model.addAttribute("list", list);
//		for (int i = 0 ; i < list.size();i++) {
//			System.out.println(list.get(i).getFileName());
//		}
//		
//		System.out.println(param.getStype());
		return "admin/play/exhibit";
	}
	
	@RequestMapping("/admin/play/exhibitWriteForm.do")
	public String exhibitWriteForm(HttpServletRequest req) {
		return "admin/play/exhibitWriteForm";
	}
	
	@RequestMapping("/admin/play/writeE.do")
	public String writeE(HttpServletRequest req, ExhibitVO param, @RequestParam("filename_tmp") MultipartFile file) {
		String pageName = playService.writeE(req, param, file);
		
		return pageName;
	}	
	@RequestMapping("/admin/play/exhibitModifyForm.do")
	public String modifyViewE(Model model, ExhibitVO param) {
		model.addAttribute("vo", playService.modifyViewE(param));
		
		return "admin/play/exhibitModifyForm";
	}
		
	@RequestMapping("/admin/play/modifyE.do")
	public String modifyE(HttpServletRequest req, ExhibitVO param, @RequestParam("filename_tmp") MultipartFile file) {
		String pageName = playService.modifyE(req, param, file);
		return pageName;
	}

	@RequestMapping("/admin/play/deleteE.do")
	public String deleteCheckE(@RequestParam("no") int[] check, ExhibitVO param) {
		for (int i = 0; i < check.length; i++) {
			System.out.println(check[i]);
		}
		String pageName = playService.deleteE(check, param);
		
		return pageName;
	}
}

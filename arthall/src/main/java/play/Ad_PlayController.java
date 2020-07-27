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
	
	@RequestMapping("/admin/play/list.do")
	public String list(Model model, HttpServletRequest req, PlayVO param) {
		List<PlayVO> list = playService.list(param);
		
		model.addAttribute("vo", param);
		model.addAttribute("list", list);
		
		return "admin/play/list";
	}
	
	@RequestMapping("/admin/play/writeForm.do")
	public String writeForm(HttpServletRequest req) {
		return "admin/play/write";
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
//	
//	@RequestMapping("/article/read.do")
//	public String read2(Model model, HttpServletRequest req, ArticleVO param) {
//		ArticleVO data = articleService.read2(param);
//		int cnt = articleService.read_cnt(param);
//		model.addAttribute("vo", param);
//		model.addAttribute("data", data);
//		model.addAttribute("cnt", cnt);
//		return "article/readArticle";
//	}
//	
//	@RequestMapping("/article/delete.do")
//	public String deleteContent(Model model, ArticleVO param) {
//		String  pageName = articleService.deleteContent(param);
//		return pageName;
//	}
	
}

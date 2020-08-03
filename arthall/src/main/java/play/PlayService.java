package play;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

public interface PlayService {

	public List<PlayVO> list(PlayVO param);
	public String write(HttpServletRequest req, PlayVO param, MultipartFile file);
	public String delete(int[] check, PlayVO param);
	public String modify(HttpServletRequest req, PlayVO param, MultipartFile file);
	public PlayVO modifyView(PlayVO param);
	
	public List<PerformVO> listP(PerformVO param);
	public String writeP(HttpServletRequest req, PerformVO param, MultipartFile file);
	public String deleteP(int[] check, PerformVO param);
	public String modifyP(HttpServletRequest req, PerformVO param, MultipartFile file);
	public PerformVO modifyViewP(PerformVO param);	
}

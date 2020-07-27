package play;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;

public interface PlayService {

	public List<PlayVO> list(PlayVO param);
	public String write(HttpServletRequest req, PlayVO param, MultipartFile file);
			
}

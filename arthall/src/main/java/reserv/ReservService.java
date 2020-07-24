package reserv;

import java.util.List;

import org.springframework.web.bind.annotation.RequestParam;

public interface ReservService {
	
	public List<ReservVo> list(ReservVo param);
	
	public String delete(@RequestParam("no") String[] nono, ReservVo param);

}

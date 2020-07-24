package play;

import java.util.List;

public interface PlayService {

	public List<PlayVO> list(PlayVO param);
	public String addPlay(PlayVO param);
			
}

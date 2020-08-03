package play;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class PlayDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	//Play
	public List<PlayVO> list(PlayVO param){
		return sqlSession.selectList("play.list", param);
	}
	
	public int count(PlayVO param) {
		return sqlSession.selectOne("play.count", param);
	}
	
	public int write(PlayVO param) {
		return sqlSession.insert("play.write", param);
	}

	public int delete(PlayVO param) {
		return sqlSession.delete("play.delete", param);
	}
	public int modify(PlayVO param) {
		return sqlSession.update("play.modify", param);
	}
	
	public PlayVO modifyView(PlayVO param){
		return sqlSession.selectOne("play.modifyView", param);
	}
	
	//Perform
	public List<PerformVO> listP(PerformVO param){
		return sqlSession.selectList("play.listP", param);
	}
	
	public int countP(PerformVO param) {
		return sqlSession.selectOne("play.countP", param);
	}
	
	public int writeP(PerformVO param) {
		return sqlSession.insert("play.writeP", param);
	}

	public int deleteP(PerformVO param) {
		return sqlSession.delete("play.deleteP", param);
	}
	public int modifyP(PerformVO param) {
		return sqlSession.update("play.modifyP", param);
	}
	
	public PerformVO modifyViewP(PerformVO param){
		return sqlSession.selectOne("play.modifyViewP", param);
	}	
}

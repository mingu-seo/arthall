package admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminServiceImple implements AdminService {
	
	@Autowired
	AdminDAO adminDao;
	
	@Override
	public List<AdminVO> adminList() {
		return adminDao.adminList();
	}

}

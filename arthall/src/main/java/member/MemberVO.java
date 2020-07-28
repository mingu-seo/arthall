package member;


import java.sql.Timestamp;

import util.Parameter;

public class MemberVO extends Parameter{

	private String no;
	private String id;
	private String password;
	private String name;
	private String tel;
	private String email;
	private String addr;
	private String birth;
	private Timestamp joinDate;
	private Timestamp lastVisit;
	private String banMem;
	
	MemberVO() {
		super.setPage(1);
		super.setSize(10);
	}
	
	public String getNo() {
		return no;
	}
	public void setNo(String no) {
		this.no = no;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public Timestamp getJoinDate() {
		return joinDate;
	}
	public void setJoinDate(Timestamp joinDate) {
		this.joinDate = joinDate;
	}

	public Timestamp getLastVisit() {
		return lastVisit;
	}

	public void setLastVisit(Timestamp lastVisit) {
		this.lastVisit = lastVisit;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public String getBanMem() {
		return banMem;
	}

	public void setBanMem(String banMem) {
		this.banMem = banMem;
	}

}

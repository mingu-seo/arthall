package member;
import java.sql.Timestamp;

import util.Parameter;

public class MemberVO extends Parameter{
  
	private int no;
	private String id;
	private String pw;
	private String name;
	private int gender;
	private String sex;
	private String tel;
	private String email;
	private String email_id;
	private String email_add;
	private String birth;
	
	private String sample4_postcode;
	private String sample4_roadAddress;
	private String sample4_jibunAddress;
	private String sample4_detailAddress;
	
	private Timestamp joinDate;
	private Timestamp lastVisit;
	private String banMem;
	private String banSelect;
	
	private String chk1;
	private String chk2;
	private int ad_email;
	private int ad_tel;
	
	MemberVO() {
		super.setPage(1);
		super.setSize(10);
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getGender() {
		return gender;
	}

	public void setGender(int gender) {
		this.gender = gender;
	}

	public String getTel() {
		return tel;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getEmail() {
		return email;
	}
	
	public String getEmail_id() {
		return email_id;
	}

	public void setEmail_id(String email_id) {
		this.email_id = email_id;
	}

	public String getEmail_add() {
		return email_add;
	}

	public void setEmail_add(String email_add) {
		this.email_add = email_add;
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

	public String getSample4_postcode() {
		return sample4_postcode;
	}

	public void setSample4_postcode(String sample4_postcode) {
		this.sample4_postcode = sample4_postcode;
	}

	public String getSample4_roadAddress() {
		return sample4_roadAddress;
	}

	public void setSample4_roadAddress(String sample4_roadAddress) {
		this.sample4_roadAddress = sample4_roadAddress;
	}

	public String getSample4_jibunAddress() {
		return sample4_jibunAddress;
	}

	public void setSample4_jibunAddress(String sample4_jibunAddress) {
		this.sample4_jibunAddress = sample4_jibunAddress;
	}

	public String getSample4_detailAddress() {
		return sample4_detailAddress;
	}

	public void setSample4_detailAddress(String sample4_detailAddress) {
		this.sample4_detailAddress = sample4_detailAddress;
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

	public String getBanMem() {
		return banMem;
	}

	public void setBanMem(String banMem) {
		this.banMem = banMem;
	}

	public String getBanSelect() {
		return banSelect;
	}

	public void setBanSelect(String banSelect) {
		this.banSelect = banSelect;
	}

	public String getChk1() {
		return chk1;
	}

	public void setChk1(String chk1) {
		this.chk1 = chk1;
	}

	public String getChk2() {
		return chk2;
	}

	public void setChk2(String chk2) {
		this.chk2 = chk2;
	}

	public int getAd_email() {
		return ad_email;
	}

	public void setAd_email(int ad_email) {
		this.ad_email = ad_email;
	}

	public int getAd_tel() {
		return ad_tel;
	}

	public void setAd_tel(int ad_tel) {
		this.ad_tel = ad_tel;
	}

}

	

package play;

import java.sql.Date;

public class PerformVO extends util.Parameter{
	
	private int no;
	private String playName;
	private int playNo;
	private String time;
	private String actor;
	private String priceA;
	private String priceB;
	private String priceC;
	private String priceD;
	
	public PerformVO(){
		super.setPage(1);
		super.setSize(10);
	}
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getPlayName() {
		return playName;
	}
	public void setPlayName(String playName) {
		this.playName = playName;
	}
	public int getPlayNo() {
		return playNo;
	}
	public void setPlayNo(int playNo) {
		this.playNo = playNo;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getActor() {
		return actor;
	}
	public void setActor(String actor) {
		this.actor = actor;
	}
	public String getPriceA() {
		return priceA;
	}
	public void setPriceA(String priceA) {
		this.priceA = priceA;
	}
	public String getPriceB() {
		return priceB;
	}
	public void setPriceB(String priceB) {
		this.priceB = priceB;
	}
	public String getPriceC() {
		return priceC;
	}
	public void setPriceC(String priceC) {
		this.priceC = priceC;
	}
	public String getPriceD() {
		return priceD;
	}
	public void setPriceD(String priceD) {
		this.priceD = priceD;
	}
	
}

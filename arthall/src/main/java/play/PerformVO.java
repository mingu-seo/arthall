package play;

import java.sql.Date;

public class PerformVO extends util.Parameter{
	
	private int no;
	private String playName;
	private int playNo;
	private String time;
	private String actor;
	private int priceA;
	private int priceB;
	private int priceC;
	
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
	public int getPriceA() {
		return priceA;
	}
	public void setPriceA(int priceA) {
		this.priceA = priceA;
	}
	public int getPriceB() {
		return priceB;
	}
	public void setPriceB(int priceB) {
		this.priceB = priceB;
	}
	public int getPriceC() {
		return priceC;
	}
	public void setPriceC(int priceC) {
		this.priceC = priceC;
	}
	
	
}

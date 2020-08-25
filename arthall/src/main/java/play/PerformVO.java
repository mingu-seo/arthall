package play;

import java.sql.Date;

public class PerformVO extends util.Parameter{
	
	private int no;
	private String playName;
	private int playNo;
	private String time;
	private String actor;
	private int priceVip;
	private int priceR;
	private int priceS;
	private int priceWheel;
	
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
	public int getPriceVip() {
		return priceVip;
	}
	public void setPriceVip(int priceVip) {
		this.priceVip = priceVip;
	}
	public int getPriceR() {
		return priceR;
	}
	public void setPriceR(int priceR) {
		this.priceR = priceR;
	}
	public int getPriceS() {
		return priceS;
	}
	public void setPriceS(int priceS) {
		this.priceS = priceS;
	}
	public int getPriceWheel() {
		return priceWheel;
	}
	public void setPriceWheel(int priceWheel) {
		this.priceWheel = priceWheel;
	}
	
}

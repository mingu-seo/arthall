package play;

import java.sql.Date;

public class PerformVO extends util.Parameter{
	
	private int no;
	private String performName;
	private int performNo;
	private Date performDate;
	private int time;
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
	
	public String getPerformName() {
		return performName;
	}

	public void setPerformName(String performName) {
		this.performName = performName;
	}

	public int getPerformNo() {
		return performNo;
	}
	public void setPerformNo(int performNo) {
		this.performNo = performNo;
	}
	public Date getPerformDate() {
		return performDate;
	}
	public void setPerformDate(Date performDate) {
		this.performDate = performDate;
	}
	public int getTime() {
		return time;
	}
	public void setTime(int time) {
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

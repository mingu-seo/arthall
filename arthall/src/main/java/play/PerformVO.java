package play;

import util.Parameter;

public class PerformVO extends Parameter{
	
	private int performNo;
	private String playName;
	private String content;
	private int priceA;
	private int priceB;
	private int priceC;
	
	
	public int getPerformNo() {
		return performNo;
	}
	public void setPerformNo(int performNo) {
		this.performNo = performNo;
	}
	public String getPlayName() {
		return playName;
	}
	public void setPlayName(String playName) {
		this.playName = playName;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
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

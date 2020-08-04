package play;

import java.sql.Date;

public class ExhibitVO extends util.Parameter{
	
	private int no;
	private String exName;
	private int exNo;
	private Date exDate;
	private int time;
	private String author;
	private int priceA;
	private int priceB;
	private int priceC;
	
	public ExhibitVO(){
		super.setPage(1);
		super.setSize(10);
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getExName() {
		return exName;
	}

	public void setExName(String exName) {
		this.exName = exName;
	}

	public int getExNo() {
		return exNo;
	}

	public void setExNo(int exNo) {
		this.exNo = exNo;
	}

	public Date getExDate() {
		return exDate;
	}

	public void setExDate(Date exDate) {
		this.exDate = exDate;
	}

	public int getTime() {
		return time;
	}

	public void setTime(int time) {
		this.time = time;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
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

package play;

import java.sql.Timestamp;

public class PlayVO extends util.Parameter{

	private String playNo;
	private String playName;
	private Timestamp startDate;
	private Timestamp endDate;
	private int hallNo;
	private String actor;
	private String content;
	private int priceA;
	private int priceB;
	private int priceC;
	private int exhPrice;
	
	private String filename;
	private Timestamp regdate;
	private Timestamp moddate;
	
	public PlayVO(){
		super.setPage(1);
		super.setSize(10);
	}
	
	public String getPlayNo() {
		return playNo;
	}
	public void setPlayNo(String playNo) {
		this.playNo = playNo;
	}
	public String getPlayName() {
		return playName;
	}
	public void setPlayName(String playName) {
		this.playName = playName;
	}
	public Timestamp getStartDate() {
		return startDate;
	}
	public void setStartDate(Timestamp startDate) {
		this.startDate = startDate;
	}
	public Timestamp getEndDate() {
		return endDate;
	}
	public void setEndDate(Timestamp endDate) {
		this.endDate = endDate;
	}
	public int getHallNo() {
		return hallNo;
	}
	public void setHallNo(int hallNo) {
		this.hallNo = hallNo;
	}
	public String getActor() {
		return actor;
	}
	public void setActor(String actor) {
		this.actor = actor;
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
	public int getExhPrice() {
		return exhPrice;
	}
	public void setExhPrice(int exhPrice) {
		this.exhPrice = exhPrice;
	}
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	public Timestamp getRegdate() {
		return regdate;
	}
	public void setRegdate(Timestamp regdate) {
		this.regdate = regdate;
	}
	public Timestamp getModdate() {
		return moddate;
	}
	public void setModdate(Timestamp moddate) {
		this.moddate = moddate;
	}
	
	
	
}

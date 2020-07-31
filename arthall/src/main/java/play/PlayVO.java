package play;

import java.sql.Date;
import java.sql.Timestamp;

public class PlayVO extends util.Parameter{

	private int no;
	private String playName;
	private Date startDate;
	private Date endDate;
	private int runtime;
	private int hallNo;
	private String actor;
	private String content;
	private int playType;
	private int priceA;
	private int priceB;
	private int priceC;
	private int exhPrice;
	
	private Timestamp regdate;
	private Timestamp moddate;
	
	public PlayVO(){
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

	public Date getStartDate() {
		return startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

	public Date getEndDate() {
		return endDate;
	}

	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}

	public int getRuntime() {
		return runtime;
	}

	public void setRuntime(int runtime) {
		this.runtime = runtime;
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

	public void setPriceA(Integer priceA) {
		if ( priceA == null ) {
			this.priceA = 0;
		} else {
			this.priceA = priceA;
		}
	}

	public int getPriceB() {
		return priceB;
	}

	public void setPriceB(Integer priceB) {
		if ( priceB == null ) {
			this.priceB = 0;
		} else {
			this.priceB = priceB;
		}
	}

	public int getPriceC() {
		return priceC;
	}

	public void setPriceC(Integer priceC) {
		if ( priceC == null ) {
			this.priceC = 0;
		} else {
			this.priceC = priceC;
		}
	}

	public int getExhPrice() {
		return exhPrice;
	}

	public void setExhPrice(Integer exhPrice) {
		if ( exhPrice == null ) {
			this.exhPrice = 0;
		} else {
			this.exhPrice = exhPrice;
		}
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

	public int getPlayType() {
		return playType;
	}

	public void setPlayType(int playType) {
		this.playType = playType;
	}
	
	
	
	
}

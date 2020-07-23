package play;

import java.sql.Timestamp;

public class PlayVO {

	private int playNo;
	private Timestamp startDay;
	private Timestamp lastDay;
	private int hallNo;
	private String actor;
	private int cost;
	private String seatType;
	private String textContents;
	private String imageContents;
	
	public int getPlayNo() {
		return playNo;
	}
	public void setPlayNo(int playNo) {
		this.playNo = playNo;
	}
	public Timestamp getStartDay() {
		return startDay;
	}
	public void setStartDay(Timestamp startDay) {
		this.startDay = startDay;
	}
	public Timestamp getLastDay() {
		return lastDay;
	}
	public void setLastDay(Timestamp lastDay) {
		this.lastDay = lastDay;
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
	public int getCost() {
		return cost;
	}
	public void setCost(int cost) {
		this.cost = cost;
	}
	public String getSeatType() {
		return seatType;
	}
	public void setSeatType(String seatType) {
		this.seatType = seatType;
	}
	public String getTextContents() {
		return textContents;
	}
	public void setTextContents(String textContents) {
		this.textContents = textContents;
	}
	public String getImageContents() {
		return imageContents;
	}
	public void setImageContents(String imageContents) {
		this.imageContents = imageContents;
	}
	
	
	
	
}

package show;

import java.sql.Timestamp;

public class ShowVO {

	private int ShowNo;
	private Timestamp StartDay;
	private Timestamp LastDay;
	private int HallNo;
	private String Actor;
	private int Cost;
	private String SeatType;
	private String TextContents;
	private String ImageContents;
	
	
	public int getShowNo() {
		return ShowNo;
	}
	public void setShowNo(int showNo) {
		ShowNo = showNo;
	}
	public Timestamp getStartDay() {
		return StartDay;
	}
	public void setStartDay(Timestamp startDay) {
		StartDay = startDay;
	}
	public Timestamp getLastDay() {
		return LastDay;
	}
	public void setLastDay(Timestamp lastDay) {
		LastDay = lastDay;
	}
	public int getHallNo() {
		return HallNo;
	}
	public void setHallNo(int hallNo) {
		HallNo = hallNo;
	}
	public String getActor() {
		return Actor;
	}
	public void setActor(String actor) {
		Actor = actor;
	}
	public int getCost() {
		return Cost;
	}
	public void setCost(int cost) {
		Cost = cost;
	}
	public String getSeatType() {
		return SeatType;
	}
	public void setSeatType(String seatType) {
		SeatType = seatType;
	}
	public String getTextContents() {
		return TextContents;
	}
	public void setTextContents(String textContents) {
		TextContents = textContents;
	}
	public String getImageContents() {
		return ImageContents;
	}
	public void setImageContents(String imageContents) {
		ImageContents = imageContents;
	}
	
	
}

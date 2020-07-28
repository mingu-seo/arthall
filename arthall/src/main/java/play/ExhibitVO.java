package play;

import util.Parameter;

public class ExhibitVO extends Parameter{
	
	private int exhibitNo;
	private String playName;
	private String actor;
	private String content;
	private int priceChildren;
	private int priceTeenager;
	private int priceAdult;
	
	
	public int getExhibitNo() {
		return exhibitNo;
	}
	public void setExhibitNo(int exhibitNo) {
		this.exhibitNo = exhibitNo;
	}
	public String getPlayName() {
		return playName;
	}
	public void setPlayName(String playName) {
		this.playName = playName;
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
	public int getPriceChildren() {
		return priceChildren;
	}
	public void setPriceChildren(int priceChildren) {
		this.priceChildren = priceChildren;
	}
	public int getPriceTeenager() {
		return priceTeenager;
	}
	public void setPriceTeenager(int priceTeenager) {
		this.priceTeenager = priceTeenager;
	}
	public int getPriceAdult() {
		return priceAdult;
	}
	public void setPriceAdult(int priceAdult) {
		this.priceAdult = priceAdult;
	}
	

}

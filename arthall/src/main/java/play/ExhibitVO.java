package play;

import java.sql.Date;

public class ExhibitVO extends util.Parameter{
	
	private int no;
	private String playName;
	private int playNo;
	private String artist;
	private int priceAdult;
	private int priceTeenager;
	private int priceChildren;
	
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

	public String getArtist() {
		return artist;
	}

	public void setArtist(String artist) {
		this.artist = artist;
	}

	public int getPriceAdult() {
		return priceAdult;
	}

	public void setPriceAdult(int priceAdult) {
		this.priceAdult = priceAdult;
	}

	public int getPriceTeenager() {
		return priceTeenager;
	}

	public void setPriceTeenager(int priceTeenager) {
		this.priceTeenager = priceTeenager;
	}

	public int getPriceChildren() {
		return priceChildren;
	}

	public void setPriceChildren(int priceChildren) {
		this.priceChildren = priceChildren;
	}

	
}

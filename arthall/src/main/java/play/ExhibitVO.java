package play;

import java.sql.Date;

public class ExhibitVO extends util.Parameter{
	
	private int no;
	private String playName;
	private int playNo;
	private String artist;
	private String priceAdult;
	private String priceTeenager;
	private String priceChildren;
	
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

	public String getPriceAdult() {
		return priceAdult;
	}

	public void setPriceAdult(String priceAdult) {
		this.priceAdult = priceAdult;
	}

	public String getPriceTeenager() {
		return priceTeenager;
	}

	public void setPriceTeenager(String priceTeenager) {
		this.priceTeenager = priceTeenager;
	}

	public String getPriceChildren() {
		return priceChildren;

	}
	
	public void setPriceChildren(String priceChildren) {
		this.priceChildren = priceChildren;
	}

}

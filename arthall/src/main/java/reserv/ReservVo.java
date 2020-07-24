package reserv;

import java.sql.Date;

public class ReservVo extends Parameter {
	
	private String reservNo;
	private String playName;
	private String name;
	private String hallNo;
	private Date playDay;
	private int runtime;
	private Date reservDay;
	
	ReservVo() {
		super.setPage(1);
		super.setSize(10);
	}
	
	
	public Date getPlayDay() {
		return playDay;
	}
	public void setPlayDay(Date playDay) {
		this.playDay = playDay;
	}
	public Date getReservDay() {
		return reservDay;
	}
	public void setReservDay(Date reservDay) {
		this.reservDay = reservDay;
	}
	
	public String getReservNo() {
		return reservNo;
	}
	public void setReservNo(String reservNo) {
		this.reservNo = reservNo;
	}
	public String getPlayName() {
		return playName;
	}
	public void setPlayName(String playName) {
		this.playName = playName;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getHallNo() {
		return hallNo;
	}
	public void setHallNo(String hallNo) {
		this.hallNo = hallNo;
	}

	public int getRuntime() {
		return runtime;
	}
	public void setRuntime(int runtime) {
		this.runtime = runtime;
	}

	

}

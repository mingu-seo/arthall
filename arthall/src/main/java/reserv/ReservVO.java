package reserv;

import java.sql.Date;

import util.Parameter;

public class ReservVO extends Parameter {
   
   private int no;
   private String reservNo;
   private int memberNo;
   private String name;
   private Date reservDate;
   private int playNo;
   private String playName;
   private Date playDate;
   private String time;
   private int hallNo;
   private String hallName;
   private String pay;
   private String price;
   private String Seat;
   
   ReservVO() {
	      super.setPage(1);
	      super.setSize(10);
	   }
   


   public String getHallName() {
	   return hallName;
   }
   
   public void setHallName(String hallName) {
	   this.hallName = hallName;
   }

   public int getNo() {
	return no;
	}
	
	public void setNo(int no) {
		this.no = no;
	}
	
	public String getReservNo() {
		return reservNo;
	}
	
	public void setReservNo(String reservNo) {
		this.reservNo = reservNo;
	}
	
	public int getMemberNo() {
		return memberNo;
	}
	
	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}
	
	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public Date getReservDate() {
		return reservDate;
	}
	
	public void setReservDate(Date reservDate) {
		this.reservDate = reservDate;
	}
	
	public int getPlayNo() {
		return playNo;
	}
	
	public void setPlayNo(int playNo) {
		this.playNo = playNo;
	}
	
	public String getPlayName() {
		return playName;
	}
	
	public void setPlayName(String playName) {
		this.playName = playName;
	}
	
	public Date getPlayDate() {
		return playDate;
	}
	
	public void setPlayDate(Date playDate) {
		this.playDate = playDate;
	}
	
	public String getTime() {
		return time;
	}
	
	public void setTime(String time) {
		this.time = time;
	}
	
	public int getHallNo() {
		return hallNo;
	}
	
	public void setHallNo(int hallNo) {
		this.hallNo = hallNo;
	}
	
	public String getPay() {
		return pay;
	}
	
	public void setPay(String pay) {
		this.pay = pay;
	}



	public String getPrice() {
		return price;
	}



	public void setPrice(String price) {
		this.price = price;
	}



	public String getSeat() {
		return Seat;
	}



	public void setSeat(String seat) {
		Seat = seat;
	}
	
	   
	    
	
	   
}
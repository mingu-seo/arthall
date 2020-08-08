package reserv;

import java.sql.Date;

import util.Parameter;

public class ReservVO extends Parameter {
   
   private String no;
   private String reservNo;
   private int memberNo;
   private String name;
   private Date reservDate;
   private String playNo;
   private String playName;
   private Date playDate;
   private String time;
   private int hallNo;
   private String pay;
   
   private String resultBox__date;
   
   private String startDate;
   private String endDate;
   
   ReservVO() {
	      super.setPage(1);
	      super.setSize(10);
	   }
   
   

public String getResultBox__date() {
	return resultBox__date;
}



public void setResultBox__date(String resultBox__date) {
	this.resultBox__date = resultBox__date;
}



public String getNo() {
	return no;
}

public void setNo(String no) {
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

public String getStartDate() {
	return startDate;
}

public void setStartDate(String startDate) {
	this.startDate = startDate;
}

public String getEndDate() {
	return endDate;
}

public void setEndDate(String endDate) {
	this.endDate = endDate;
}
   
    

   
}
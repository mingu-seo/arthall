package reserv;

import java.sql.Date;

import util.Parameter;

public class ReservVO extends Parameter {
   
   private String no;
   private String name;
   private Date reservDate;
   private String playNo;
   private String playName;
   private Date playDate;
   private int runtime;
   private int hallNo;
   

   
   ReservVO() {
      super.setPage(1);
      super.setSize(10);
   }
   
   public String getNo() {
      return no;
   }
   public void setNo(String no) {
      this.no = no;
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

   
}
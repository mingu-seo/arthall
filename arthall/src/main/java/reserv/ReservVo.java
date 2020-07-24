package reserv;

import java.sql.Date;

public class ReservVo extends Parameter {
   
   private String no;
   private String name;
   private Date reservDay;
   private String playNo;
   private String playName;
   private Date playDay;
   private int runtime;
   private String hallNo;
   
   ReservVo() {
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
   public Date getReservDay() {
      return reservDay;
   }
   public void setReservDay(Date reservDay) {
      this.reservDay = reservDay;
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
   public Date getPlayDay() {
      return playDay;
   }
   public void setPlayDay(Date playDay) {
      this.playDay = playDay;
   }
   public int getRuntime() {
      return runtime;
   }
   public void setRuntime(int runtime) {
      this.runtime = runtime;
   }
   public String getHallNo() {
      return hallNo;
   }
   public void setHallNo(String hallNo) {
      this.hallNo = hallNo;
   }

   
}
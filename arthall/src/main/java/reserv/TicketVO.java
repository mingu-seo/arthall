package reserv;

public class TicketVO {

	private String no;
	private String reservNo;
	private String seatType;
	private int price;
	private String pay;
	
	
	public String getNo() {
		return no;
	}
	public String getPay() {
		return pay;
	}
	public void setPay(String pay) {
		this.pay = pay;
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
	public String getSeatType() {
		return seatType;
	}
	public void setSeatType(String seatType) {
		this.seatType = seatType;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	
	
}

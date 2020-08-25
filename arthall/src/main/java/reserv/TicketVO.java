package reserv;

public class TicketVO {

	private int no;
	private String reservNo;
	private String seatType;
	private String seatType1;
	private String seatType2;
	private String seatType3;
	private int priceAll; // 전체 공연 가격, 이게 관리자에서 보일지 안보일지 모르겠는데 일단 user 입장에는 필요해서 만들어놓음
	private int price; // 티켓 하나 가격
	private String pay;
	
	
	public int getPriceAll() {
		return priceAll;
	}
	public void setPriceAll(int priceAll) {
		this.priceAll = priceAll;
	}
	public String getSeatType1() {
		return seatType1;
	}
	public void setSeatType1(String seatType1) {
		this.seatType1 = seatType1;
	}
	public String getSeatType2() {
		return seatType2;
	}
	public void setSeatType2(String seatType2) {
		this.seatType2 = seatType2;
	}
	public String getSeatType3() {
		return seatType3;
	}
	public void setSeatType3(String seatType3) {
		this.seatType3 = seatType3;
	}
	public int getNo() {
		return no;
	}
	public String getPay() {
		return pay;
	}
	public void setPay(String pay) {
		this.pay = pay;
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

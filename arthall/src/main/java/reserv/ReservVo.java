package reserv;

import java.sql.Date;

public class ReservVo {
	
	private String reservNo;
	private String playName;
	private String name;
	private String hallNo;
	private Date playDay;
	private int runtime;
	private Date reservDay;
	
	private int page;
	private int startRow;
	private int size;
	private int startPage;
	private int endPage;
	private int totalCount;
	private int totalPage;
	
	
	
	
	
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	public int getStartRow() {
		return startRow;
	}
	public void setStartRow(int startRow) {
		this.startRow = startRow;
	}
	public int getSize() {
		return size;
	}
	public void setSize(int size) {
		this.size = size;
	}
	public int getStartPage() {
		return startPage;
	}
	public void setStartPage(int startPage) {
		this.startPage = startPage;
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
	public int getEndPage() {
		return endPage;
	}
	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}
	public int getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}
	public int getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
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

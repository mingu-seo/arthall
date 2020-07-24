package util;

/*
 * 20200723 18:05 임한철 : faq 페이지 처리를 위한 파라메터 삽입  
 * 
 *
 */
public class Parameter {
	private String sval;
	
	private int page; // 요청페이지번호
	private int startRow; // 시작로우(limit 앞)
	private int size;	// 페이지당 갯수(limit 뒤)
	private int startPage; // 페이지하단에 시작페이지
	private int endPage; // 페이지하단에 마지막페이지
	private int totalCount; // 전체갯수
	private int totalPage; // 총페이지수
	

	public String getSval() {
		return sval;
	}
	public void setSval(String sval) {
		this.sval = sval;
	}
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
	
	

}

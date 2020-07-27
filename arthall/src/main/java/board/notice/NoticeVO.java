package board.notice;

import java.sql.Timestamp;

import util.Parameter;

public class NoticeVO extends Parameter {
	
	private int no; //번호
	private int readCnt;  //조회수
	private String modDate; //수정날짜
	private String writer; // 작성자
	private String title; // 제목
	private String content; // 내용
	private Timestamp regDate; //작성일
	
	
	
	NoticeVO() {
		super.setPage(1);
		super.setSize(10);
	}

	
	
	
	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}


	public int getReadCnt() {
		return readCnt;
	}
	public void setReadCnt(int readCnt) {
		this.readCnt = readCnt;
	}
	public String getModDate() {
		return modDate;
	}
	public void setModDate(String modDate) {
		this.modDate = modDate;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Timestamp getRegDate() {
		return regDate;
	}
	public void setRegDate(Timestamp regDate) {
		this.regDate = regDate;
	}


	

}

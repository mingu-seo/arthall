package board.qna;

import java.sql.Timestamp;

import util.Parameter;

// 20200727 : 임한철 qnavo
public class QnaVO extends Parameter {
	private int no;
	private String title;
	private String content;
	private int readcnt;
	private Timestamp regdate;
	private Timestamp moddate;
	private String writer;
	private String filename;
	private int gno; //그룹이름
	private int ono; //주문이름	
	private int nested; //들여쓰기
	
	QnaVO() {		
		super.setPage(1);
		super.setSize(10);
	}
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
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
	public int getReadcnt() {
		return readcnt;
	}
	public void setReadcnt(int readcnt) {
		this.readcnt = readcnt;
	}
	public Timestamp getRegdate() {
		return regdate;
	}
	public void setRegdate(Timestamp regdate) {
		this.regdate = regdate;
	}
	public Timestamp getModdate() {
		return moddate;
	}
	public void setModdate(Timestamp moddate) {
		this.moddate = moddate;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	public int getGno() {
		return gno;
	}
	public void setGno(int gno) {
		this.gno = gno;
	}
	public int getOno() {
		return ono;
	}
	public void setOno(int ono) {
		this.ono = ono;
	}
	public int getNested() {
		return nested;
	}
	public void setNested(int nested) {
		this.nested = nested;
	}
	
	
	
}

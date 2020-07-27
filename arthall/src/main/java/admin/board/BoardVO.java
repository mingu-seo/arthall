package admin.board;

import java.sql.Timestamp;

import util.Parameter;

public class BoardVO  extends Parameter {
	
		private int no;
		private String title;
		private String content;
		private Timestamp regdate;
		private Timestamp moddate;
		private int readcnt;
		private String writer;
		private String filename;
		private int group_no;
		private int order_no;
		private int depth_no;
		

		public int getGroup_no() {
			return group_no;
		}

		public void setGroup_no(int group_no) {
			this.group_no = group_no;
		}

		public int getOrder_no() {
			return order_no;
		}

		public void setOrder_no(int order_no) {
			this.order_no = order_no;
		}

		public int getDepth_no() {
			return depth_no;
		}

		public void setDepth_no(int depth_no) {
			this.depth_no = depth_no;
		}

		BoardVO() {		
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

		public int getReadcnt() {
			return readcnt;
		}

		public void setReadcnt(int readcnt) {
			this.readcnt = readcnt;
		}

		public String getFilename() {
			return filename;
		}

		public void setFilename(String filename) {
			this.filename = filename;
		}
		
		
		
		
	}



package comment;

import java.sql.Timestamp;


public class CommentVO {
	
		private int no;
		private String table_name;
		private int post_no;
		private String writer;
		private String content;
		private Timestamp regdate;
		
		public int getNo() {
			return no;
		}
		public void setNo(int no) {
			this.no = no;
		}
		public String getTable_name() {
			return table_name;
		}
		public void setTable_name(String table_name) {
			this.table_name = table_name;
		}
		public int getPost_no() {
			return post_no;
		}
		public void setPost_no(int post_no) {
			this.post_no = post_no;
		}
		public String getWriter() {
			return writer;
		}
		public void setWriter(String writer) {
			this.writer = writer;
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
		
	}



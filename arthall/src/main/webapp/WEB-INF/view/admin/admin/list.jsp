<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@ include file="/WEB-INF/view/admin/include/headHtml.jsp" %>
</head>
<body> 
<div id="wrap">
	<!-- canvas -->
	<div id="canvas">
		<!-- S T A R T :: headerArea-->
		<%@ include file="/WEB-INF/view/admin/include/top.jsp" %>
		<!-- E N D :: headerArea--> 
		
		<!-- S T A R T :: containerArea-->
		<div id="container">
			<div id="content">
				<div class="con_tit">
					<h2>공지사항 - [목록]</h2>
				</div>
				<!-- //con_tit -->
				<div class="con">
					<!-- 내용 : s -->
					<div id="bbs">
						<div id="blist">
							<form name="frm" id="frm" action="/admin/admin/regist.do" method="post">
							<table width="100%" border="0" cellspacing="0" cellpadding="0" summary="관리자 관리목록입니다.">
								<colgroup>
									<col class="w4" />
									<col class="w10" />
									<col class="w10" />
									<col class="" />
									<col class="" />
									<col class="w10" />
									<col class="w10" />
									
								</colgroup>
								<thead>
									<tr>
										<th scope="col" class="first"><input type="checkbox" name="allChk" id="allChk" onClick="check(this, document.frm.no)"/></th>
										<th scope="col">아이디</th>
										<th scope="col">이름</th> 
										<th scope="col">전화번호</th> 
										<th scope="col">이메일주소</th> 
										<th scope="col">생년월일</th> 
										<th scope="col">등록일자</th> 
										
									</tr>
								</thead>
								<tbody>
									<c:forEach var="admin" items="${list}">
										<tr>
											<td class="first"><input type="checkbox" name="no" id="no" value=""/></td>
											<td>${admin.id}</td>
											<td>${admin.name}</td>
											<td>${admin.tel}</td>
											<td>${admin.email}</td>
											<td>${admin.birth}</td>
											<td>${admin.regdate}</td>
											
										</tr>
									</c:forEach>
										
								</tbody>
							</table>
							<div class="btn">
								<div class="btnLeft">
									<a class="btns" href="/admin/admin/delete.do" onclick=""><strong>삭제</strong> </a>
								</div>
								<div class="btnRight">
									<a class="wbtn" href="/admin/admin/registForm.do"><strong>신규등록</strong> </a>
								</div>
							</div>
							</form>
							<!--//btn-->
							<!-- 페이징 처리 -->
							<div class='page'>
								<strong>1</strong>
								<a href="">2</a>
								<a href="">3</a>
								<a href="">4</a>
							</div>
							<!-- //페이징 처리 -->
							<form name="searchForm" id="searchForm" action="index.do"  method="post">
								<div class="search">
									<select name="stype" title="검색을 선택해주세요">
										<option value="all">전체</option>
										<option value="title">제목</option>
										<option value="contents">내용</option>
									</select>
									<input type="text" name="sval" value="" title="검색할 내용을 입력해주세요" />
									<input type="image" src="<%=request.getContextPath()%>/img/admin/btn_search.gif" class="sbtn" alt="검색" />
								</div>
							</form>
							<!-- //search --> 
						</div>
						<!-- //blist -->
					</div>
					<!-- //bbs --> 
					<!-- 내용 : e -->
				</div>
				<!--//con -->
			</div>
			<!--//content -->
		</div>
		<!--//container --> 
		<!-- E N D :: containerArea-->
	</div>
	<!--//canvas -->
</div>
<!--//wrap -->

</body>
</html>
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
					<h2>회원관리 - [목록]</h2>
				</div>
				<!-- //con_tit -->
				<div class="con">
					<!-- 내용 : s -->
					<div id="bbs">
						<div id="blist">
							<p><span><strong>총 ${vo.totalCount}개</strong>  |  ${vo.page}/${vo.totalPage}페이지</span></p>
							<form name="frm" id="frm" action="process.do" method="post">
							<table width="100%" border="0" cellspacing="0" cellpadding="0" summary="관리자 관리목록입니다.">
								<colgroup>
									<col class="w4" />
									<col class="w5" />
									<col class="w12" />
									<col class="w12" />
									<col class="w8" />
									<col class="w15" />
									<col class="w25" />
									<col class="" />

								</colgroup>
								<thead>
									<tr>
										<th scope="col" class="first"><input type="checkbox" name="allChk" id="allChk" onClick="check(this, document.frm.no)"/></th>
										<th scope="col">번호</th>
										<th scope="col">아이디</th> 
										<th scope="col">패스워드</th> 
										<th scope="col">이름</th>
										<th scope="col">연락처</th>
										<th scope="col">이메일</th>
										<th scope="col">생년월일</th>
										<th scope="col">마지막 방문</th>
									</tr>
								</thead>
								<tbody>
								
								<!-- =========================================================================================== -->
								<c:if test="${vo.totalCount == 0}">
								<tr>
									<td colspan="4">게시글이 없습니다.</td>
								</tr>
								</c:if>
								<c:if test="${vo.totalCount > 0}">
	
								
								<c:forEach var="member" items="${list}">
								<tr>
									<td class="first"><input type="checkbox" name="no" id="no" value=""/></td>
									<td>${member.no }</td>
									<td>${member.id }</td>
									<td>${member.password }</td>
									<td>${member.name }</td>
									<td>${member.tel }</td>
									<td>${member.email }</td>
									<td>${member.birth }</td>
									<td></td>
								</tr>	
								</c:forEach>

								</c:if>
								</tbody>
								<!-- 검색기능
								<tr>
									<td colspan="4" align="center">
										<form action="list.do">
											<input type="text" name="searchword" value="${vo.searchword }"> 
											<input type="submit" value="검색">
										</form>
									</td>
								</tr> -->
								<!-- =========================================================================================== -->
							</table>
							</form>
							<!--
							<div class="btn">
								<div class="btnLeft">
									<a class="btns" href="#" onclick=""><strong>삭제</strong> </a>
								</div>
								<div class="btnRight">
									<a class="wbtn" href="write.do"><strong>등록</strong> </a>
								</div>
							</div>-->
							<!--//btn-->
							<!-- 페이징 처리 -->
							<div class='page'>
								<tr>
									<td colspan="4">
										<c:if test="${vo.startPage > 5}">
										<a href="index.do?page=${vo.startPage-5}">[이전]</a>
										</c:if>
										<c:forEach var="pNo" begin="${vo.startPage}" end="${vo.endPage}">
										<a href="index.do?page=${pNo}">${pNo}</a>
										</c:forEach>
										<c:if test="${vo.endPage < vo.totalPage}">
										<a href="index.do?page=${vo.startPage+5}">[다음]</a>
										</c:if>
									</td>
								</tr> 
							</div>
							
							
							<!-- 검색어
							<form name="searchForm" id="searchForm" action="index.do"  method="post">
								<div class="search">
									<select name="stype" title="검색을 선택해주세요">
										<option value="all">전체</option>
										<option value="title">제목</option>
										<option value="contents">내용</option>
									</select>
									<input type="text" name="searchword" value="${vo.searchword }" title="검색할 내용을 입력해주세요" />
									<input type="image" src="<%=request.getContextPath()%>/img/admin/btn_search.gif" class="sbtn" alt="검색" />
								</div>
							</form>-->
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
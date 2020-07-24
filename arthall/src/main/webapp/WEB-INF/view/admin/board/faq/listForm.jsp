<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<title>faq리스트</title>
</head>
<body>
	<h1>faqList</h1>
	<br>
	<form>
		<table border="0" width="70%" align="center" bgcolor="black">
			<tr>
				<td colspan="4" align="center" bgcolor="white"><a
					href="write.do">[새로운 FAQ등록]${param.totalCount }</a></td>
			</tr>
			<tr>
				<td width="10%" align="center" bgcolor="white">번 호</td>
				<td width="60%" align="center" bgcolor="white">제 목</td>
				<td width="15%" align="center" bgcolor="white">작 성 자</td>
			</tr>
			<c:if test="${vo.totalCount == 0}">
				<tr align="center" bgcolor="white">
					<td colspan="4">게시글이 없습니다.</td>
				</tr>
			</c:if>
			<c:if test="${vo.totalCount > 0}">
				<c:forEach var="faq" items="${list}">
					<tr align="center" bgcolor="white">
						<td>${faq.no }</td>
						<td><a
							href="read.do?no=${faq.no}&page=${vo.page}">
								<c:out value="${faq.title}" />
						</a></td>
						<td>${faq.writer }</td>
					</tr>
				</c:forEach>
			</c:if>
			<tr align="center" bgcolor="white">
				<td colspan="4"><c:if test="${vo.startPage > 5}">
						<a href="list.do?page=${vo.startPage - 5}">[이전]</a>
					</c:if> <c:forEach var="pNo" begin="${vo.startPage}" end="${vo.endPage}">
						<a href="list.do?page=${pNo}">[${pNo}]</a>
					</c:forEach> <c:if test="${vo.endPage < vo.totalPage}">
						<a href="list.do?page=${vo.startPage+5}">[다음]</a>
					</c:if></td>
			</tr>
			<!-- 
			<tr>
				<td colspan="4" align="center">
					<form action="writeForm.do">
						<input type="text" name="searchword" value="${vo.searchword }">
						<input type="submit" value="찾기">
					</form>
				</td>
			</tr>
 			-->
		</table>


	</form>



</body>
</html>
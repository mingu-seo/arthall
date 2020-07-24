<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@ include file="/WEB-INF/view/admin/include/headHtml.jsp" %>
</head>
<body> 
<table border="1">
	<tr>
		<td colspan="6"><a href="writeForm.do">[게시글 쓰기]${vo.totalCount }</a>
	</tr>
	<tr>
		<td>번호</td>
		<td>제목</td>
		<td>작성자</td>
		<td>조회수</td>
	</tr>
	<c:if test="${vo.totalCount == 0}">
	<tr>
		<td colspan="4">게시글이 없습니다.</td>
	</tr>
	</c:if>
	<c:if test="${vo.totalCount > 0}">
	<c:forEach var="article" items="${list}">
	<tr>
		<td>${article.reservNo }</td>
		<td>
			<a href="read.do?article_no=${article.article_no}&page=${vo.page}">
				<c:out value="${article.playName}"/>
			</a>
		</td>
		<td>${article.name }</td>
		<td>${article.hallNo }</td>
		<td>${article.playDay }</td>
		<td>${article.runtime }</td>
		<td>${article.reservDay }</td>
	</tr>	
	</c:forEach>
	</c:if>
	<tr>
		<td colspan="4">
			<c:if test="${vo.startPage > 5}">
			<a href="list.do?page=${vo.startPage-5}&searchword=${vo.searchword}&contentword=">[이전]</a>
			</c:if>
			<c:forEach var="pNo" begin="${vo.startPage}" end="${vo.endPage}">
			<a href="list.do?searchword=${vo.searchword}&contentword=${vo.contentword}&page=${pNo}">[${pNo}]</a>
			</c:forEach>
			<c:if test="${vo.endPage < vo.totalPage}">
			<a href="list.do?page=${vo.startPage+5}">[다음]</a>
			</c:if>
		</td>
	</tr>
	<tr>
		<td colspan="4" align="center">
		<form action="list.do">
			제목 : <input type="text" name="searchword" value="${vo.searchword }">&nbsp
			내용 : <input type="text" name="contentword" value="${vo.contentword }">
			<input type="submit" value="검색">
		</form>
		</td>
	</tr>
</table>
</body>
</html>
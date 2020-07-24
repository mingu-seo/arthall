<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@ include file="/WEB-INF/view/admin/include/headHtml.jsp" %>
<script>
function del() {
	if (confirm('정말로 삭제하시겠습니까?')) {
		location.href='delete.do?article_no=${data.article_no}';
	}
}
</script>
</head>
<body> 
<c:if test="${vo.totalCount == 0}">
    <tr>
        <td colspan="4">게시글이 없습니다.</td>
    </tr>
</c:if>
<c:if test="${vo.totalCount > 0}">
    <c:forEach var="reserv" items="${vo}">
        <tr>
            <td class="title"><a href="view.do">${reserv.no}</a></td>
		</tr>
	</c:forEach>
</c:if>

</body>
</html>
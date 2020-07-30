<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<title>왜 10001이렇게 할려는거야?</title>
</head>

	<style>
        td{
            padding: 5px 30px 5px;
        }
    </style>
    
<body>

<form >
	<table style="width: 50%;" bgcolor="black" border="0" align="center">
		<tr bgcolor="lightgray"  align="center">
			<td>제목</td>
			<td>글쓴이</td>
			<td>조회수</td>
		</tr>
	
		<c:forEach var="qna" items="${list}">
			<tr bgcolor="white">
				<td> 
					<c:forEach begin="1" end="${qna.nested }">-
					</c:forEach>
					<c:if test="${qna.nested != 0 }">&gt;</c:if>
				<a href="view.do?no=${qna.no}">${qna.title }</a>	
				
				</td>
				<td  align="center">${qna.writer }</td>
				<td  align="center">${qna.readcnt }</td>
			</tr>
		</c:forEach>
	</table>
</form>

</body>
</html>
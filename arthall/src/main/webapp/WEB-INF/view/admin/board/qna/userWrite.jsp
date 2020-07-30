<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>난 유저얌 ㅋㅋ</title>


</head>
<body>

<form action = "write.do" method="POST" enctype="multipart/form-data">
	<table align="center">
		<tr >
			<td>질문자</td>
			<td><input type = "text" name = "writer"></td>
		</tr>
		<tr>
			<td>제목</td>
			<td><input type = "text" name = "title"></td>
		</tr>
		<tr>
			<td>내용</td>
			<td><textarea id="content" name="content" title="내용을 입력해주세요" style="width:100%;"></textarea></td>
		</tr>
		<tr>
			<td>첨부파일</td>
			<td><input type="file" id="filename_tmp" name="filename_tmp" class="w100" title="첨부파일을 업로드 해주세요." /></td>
		</tr>
		<tr>
			<td></td>
			<td><input type="submit" /></td>
		</tr>
		
	</table>


</form>

</body>
</html>
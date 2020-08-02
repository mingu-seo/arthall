<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<title>사랑이란 멜로는 없어</title>
</head>
<body>
	<center><h2>QnA - [읽기]</h2></center>

	<table width="60%" border="0" cellspacing="0" cellpadding="0"
		summary="관리자 관리 기본내용입니다." align="center">
		<tbody>
			<tr>
				<th scope="row"><label for="">제목</label></th>
				<td colspan="10">${data.title }</td>
			</tr>
			<tr>
				<th scope="row"><label for="">내용</label></th>
				<td colspan="10">${data.content }</td>
			</tr>
			<tr>

				<th scope="row"><label for="">첨부파일</label></th>

				<td colspan="10">
					<div class="weidtFile">
						<p>
							<c:if test="${data.filename == null}">
															첨부파일 없음
														</c:if>
							<c:if test="${data.filename != null}">
								<a
									href="/include/file_down.jsp?path=upload/board/qna/&file_name=${data.filename}&file_name_org=${data.filename_org}"
									target="_blank"> ${data.filename_org } </a>
								<br />
							</c:if>

						</p>
					</div>
				</td>
			</tr>
		</tbody>
	</table>
	<center>
	<div class="btn">
		<div class="btnLeft">
			<a class="btns" href="index.do"><strong>목록</strong></a>
		</div>
		<!-- 
					<div class="btnRight">
						<a class="btns" style="cursor: pointer;"
							href="answerForm.do?no=${data.no}"><strong>답변달기</strong></a> <a
							class="btns" style="cursor: pointer;"
							href="modifyForm.do?no=${data.no}"><strong>수정</strong></a>
					<a class="btns" style="cursor: pointer;" href=""><strong>답변</strong></a> -->
	</div>
</center>



</body>
</html>
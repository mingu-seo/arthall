<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>가입</title>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script>
$(function() {
	$("#btn_join").click(function() {
		if ($("#id").val() == "") {
			alert("아이디를 입력해 주세요");
			$("#id").focus();
			return;
		}
		if ($("#password").val() == "") {
			alert("비밀번호를 입력해 주세요");
			return;
		}
		if ($("#confirmPassword").val() == "") {
			alert("비밀번호 확인을 입력해 주세요");
			return;
		}
		if ($("#password").val() != $("#confirmPassword").val()) {
			alert("비밀번호와 비밀번호 확인이 일치하지 않습니다.");
			$("#password").val('');
			$("#confirmPassword").val('');
			$("#password").focus();
			return;
		}
		if ($("#name").val() == '') {
			alert('이름을 입력해 주세요');
			return false;
		}
		if ($("#birth").val() == "") {
			alert("생일을 입력해 주세요");
			return;
		}
		if ($("#tel").val() == "") {
			alert("연락처를 입력해 주세요");
			return;
		}
		if ($("#email").val() == "") {
			alert("이메일을 입력해 주세요");
			return;
		}
		
		$("#frm").submit();
	});
	$("#btn_cancle").click(function() {
		
	});
});
</script>
</head>
<body>
<%-- ${isDup} / <%=request.getAttribute("isDup") == null ? "" : request.getAttribute("isDup") %> --%>
<form action="join.do" method="post" id="frm">
	<p>
		아이디:<br><input type="text" name="id" id="id">
		<c:if test="${isDup == 'true' }">이미 사용중인 아이디입니다.</c:if>
	</p>
	<p>
		암호:<br><input type="password" name="password" id="password">
	</p>
	<p>
		확인:<br><input type="password" name="confirmPassword" id="confirmPassword">
	</p>
	<p>
		이름:<br><input type="text" name="name">
	</p>
	<p>
		생년월일:<br><input type="text" name="birth" id="birth">
	</p>
	<p>
		연락처:<br><input type="text" name="tel" id="tel">
	</p>
	<p>
		이메일:<br><input type="text" name="email" id="email">
	</p>
<input type="button" value="가입" id="btn_join">
<input type="button" value="취소" id="btn_cancle">
</form>
</body>
</html>
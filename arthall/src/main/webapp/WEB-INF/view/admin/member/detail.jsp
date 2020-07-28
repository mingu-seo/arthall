<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@ include file="/WEB-INF/view/admin/include/headHtml.jsp" %>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script>
function ban() {
	alert("계정 상태를 변경하시겠습니까?")
	if($(".banMem").val()=="정상"){
		$(".banMem").val("휴면");
	} else{
		$(".banMem").val("정상");
	}
};
</script>
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
					<h2>회원정보 상세화면</h2>
				</div>
				<!-- //con_tit -->
				<div class="con">
					<!-- 내용 : s -->
					<div id="bbs">
						<div id="bread">
							<form method="post" name="frm" id="frm" action="write.do" enctype="multipart/form-data">
							<table width="100%" border="0" cellspacing="0" cellpadding="0" summary="관리자 관리 기본내용입니다.">
								<colgroup>
									<col width="10%" />
									<col width="15%" />
									<col width="10%" />
									<col width="10%" />
									<col width="10%" />
									<col width="15%" />
								</colgroup>
								<tbody>
									<input type="hidden" name="no" value="${member.no}"/>
									<tr>
										<th scope="row"><label for="">아이디</label></th>
										<td colspan="10">
											<input type="text" id="title" name="id" class="w100" title="" value="${member.id}" readonly/>	
										</td>
									</tr>
									<tr>
										<th scope="row"><label for="">비밀번호</label></th>
										<td colspan="10">
											<input type="text" id="title" name="password" class="w100" title="비밀번호를 입력해주세요" value="${member.password}"/>
											
										</td>
									</tr><tr>
										<th scope="row"><label for="">이름</label></th>
										<td colspan="10">
											<input type="text" id="title" name="name" class="w100" title="이름을 입력해주세요" value="${member.name}"/>
											
										</td>
									</tr><tr>
										<th scope="row"><label for="">전화번호</label></th>
										<td colspan="10">
											<input type="text" id="title" name="tel" class="w100" title="전화번호를 입력해주세요" value="${member.tel}"/>
											
										</td>
									</tr><tr>
										<th scope="row"><label for="">E-mail</label></th>
										<td colspan="10">
											<input type="text" id="title" name="email" class="w100" title="이메일을 입력해주세요" value="${member.email}"/>
											
										</td>
									</tr><tr>
										<th scope="row"><label for="">주소</label></th>
										<td colspan="10">
											<input type="text" id="title" name="addr" class="w100" title="주소를 입력해주세요" value="${member.addr}"/>
											
										</td>
									</tr><tr>
										<th scope="row"><label for="">생년월일</label></th>
										<td colspan="10">
											<input type="text" id="title" name="birth" class="w100" title="생년월일을 입력해주세요" value="${member.birth}"/>
											
										</td>
									</tr>
									<tr>
										<th scope="row"><label for="">계정상태</label></th>
										<td colspan="10">
										<select name="banMem" style="font-size: 12px; color: #656668";>
										    <option value="${member.banMem}" selected="selected">정상</option>
										    <option value="${member.banMem}">휴면</option>
										</select>
<!--  											<input type="text" class="banMem" name="banMem" value="${member.banMem}" readonly> 
											<input type="button" value="계정상태 변경" class="w8" onclick="ban();"/>
-->
										</td>
									</tr>
<!--  									<tr>
										<th scope="row"><label for="">*내용</label></th>
										<td colspan="10">
											<textarea id="content" name="content" title="내용을 입력해주세요" style="width:100%;"></textarea>	
										</td>
									</tr>
									<tr>
										<th scope="row"><label for="">첨부파일</label></th>
										<td colspan="10">
											<input type="file" id="filename_tmp" name="filename_tmp" class="w100" title="첨부파일을 업로드 해주세요." />	
										</td>
									</tr>
-->
								</tbody>
							</table>
							<input type="hidden" name="cmd"  />
							<!-- value="write" -->
							</form>
							<div class="btn">
								<div class="btnLeft">
									<a class="btns" href="index.do"><strong>목록</strong></a>
								</div>
								<div class="btnRight">
									<a class="btns" style="cursor:pointer;" href="javascript:$('#frm').submit();"><strong>저장</strong></a>
								</div>
							</div>
							<!--//btn-->
						</div>
						<!-- //bread -->
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
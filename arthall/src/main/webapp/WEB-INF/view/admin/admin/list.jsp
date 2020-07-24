<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@ include file="/WEB-INF/view/admin/include/headHtml.jsp" %>
<script type="text/javascript">
	$(function(){
			
		$("#delete").click(function(){
			if($('.checkSingle:checked').size()>0 
					&& confirm('정말로 삭제하시겠습니까?')){
				
				$("#frm").attr('action', '/admin/admin/delete.do');
				$("#frm").submit();	
			} else{
				alert('삭제할 계정을 선택해주세요.')
			}
		});
		
		$("#checkedAll").change(function() {
	        if (this.checked) {
	            $(".checkSingle").each(function() {
	                this.checked=true;
	            });
	        } else {
	            $(".checkSingle").each(function() {
	                this.checked=false;
	            });
	        }
	    });
	});
	
	

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
					<h2>관리자 관리</h2>
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
										<th scope="col" class="first"><input type="checkbox" name="checkedAll" id="checkedAll" /></th>
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
										<tr class = 'detail' onclick="location.href='modifyForm.do?no=${admin.no}';">
											<td class="first"><input type="checkbox" class = "checkSingle" name="chkd" id="chkd" value="${admin.id}"/></td>
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
									<a class="btns" id = "delete" href="#" ><strong>계정 삭제</strong> </a>
									<a class="btns" id = "modify" href="#" ><strong>정보 수정</strong> </a>
								</div>
								<div class="btnRight">
									<a class="wbtn" id = "regist" href="/admin/admin/registForm.do"><strong>계정 등록</strong> </a>
								</div>
							</div>
							</form>
							<!--//btn-->
							
							
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
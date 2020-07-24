<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@ include file="/WEB-INF/view/admin/include/headHtml.jsp"%>
<script>

	function empty() {
	
		if($(this).val().trim() == ""){
			$(this).siblings('span').html(($(this).parent().siblings("th").text())+"을(를) 입력해주세요.")
			$(this).focus();
		} else{
			$(this).siblings('span').html("")
		}
	}
	
	$(function() {
		$('#id').keyup(function() {
			if ($('#id').val().trim() != '') {
				$.ajax({
					url:'dup.do?id='+$('#id').val(),
					type:'html',
					async:false,
					success : function(data) {
						if (data.trim() == 'false') {
							$("#idCheckText").html("<span style=color:red>이미 사용 중인 아이디입니다.</span>");
						} else {
							$("#idCheckText").html("<span style=color:green>사용 가능한 아이디입니다.</span>");
						}
					}
				});
			} else {
				$("#idCheckText").html("아이디를 입력해 주세요");
			}
		}).click(empty);
		
		$("input:not(#id)").keyup(empty).click(empty);

		$("#reg_btn").click(function() {
			$("#frm").attr('action', '/admin/admin/regist.do');
			$("#frm").submit();
		});

	});
</script>
</head>
<body>
	<div id="wrap">
		<!-- canvas -->
		<div id="canvas">
			<!-- S T A R T :: headerArea-->
			<%@ include file="/WEB-INF/view/admin/include/top.jsp"%>
			<!-- E N D :: headerArea-->
			<!-- S T A R T :: containerArea-->
			<div id="container">
				<div id="content">
					<div class="con_tit">
						<h2>관리자 등록</h2>
					</div>
					<!-- //con_tit -->
					<div class="con">
						<!-- 내용 : s -->
						<div id="bbs">
							<div id="bread">
								<form method="post" name="frm" id="frm"
									action="/admin/admin/regist.do">
									<table width="100%" border="0" cellspacing="0" cellpadding="0"
										summary="관리자 관리 기본내용입니다.">
										<colgroup>
											<col width="10%" />
											<col width="15%" />
											<col width="10%" />
											<col width="10%" />
											<col width="10%" />
											<col width="15%" />
										</colgroup>
										<tbody>
											<tr>
												
												<th scope="row"><label for="">관리자 아이디</label></th>
												<td colspan="10">
													<input type="text" id="id" name="id"
													class="w10" title="아이디를 입력해주세요" value = "${adminVO.id}"/> 
													<span id="idCheckText"></span>
												</td>
												
											</tr>
											<tr>
												<th scope="row"><label for="">관리자 이름</label></th>
												<td colspan="10"><input type="text" id="name"
													name="name" class="w10" title="이름을 입력해주세요" value = "${adminVO.name}"/>
													<span class = "info"></span>
												</td>
											</tr>
											<tr>
												<th scope="row"><label for="">관리자 비밀번호</label></th>
												<td colspan="10"><input type="password" id="password"
													name="password" class="w10" title="비밀번호를 입력해주세요" />
													<span class = "info"></span>
												</td>
											</tr>
											<tr>
												<th scope="row"><label for="">관리자 비밀번호 확인</label></th>
												<td colspan="10"><input type="password"
													id="confirmPassword" name="confirmPassword" class="w10"
													title="비밀번호를 입력해주세요" />
													<span class = "info"></span>
												</td>
											</tr>
											<tr>
												<th scope="row"><label for="">생년월일</label></th>
												<td colspan="10"><input type="date" id="birth"
													name="birth" class="w10" title="생년월일을 입력해주세요" value = "${adminVO.birth}"/>
													<span class = "info"></span>
												</td>
											</tr>
											<tr>
												<th scope="row"><label for="">전화번호</label></th>
												<td colspan="10"><input type="text" id="tel" name="tel"
													class="w10" title="전화번호를 입력해주세요" value = "${adminVO.tel}" />
													<span class = "info"></span>
												</td>
											</tr>
											<tr>
												<th scope="row"><label for="">이메일</label></th>
												<td colspan="10"><input type="text" id="email"
													name="email" class="w10" title="이메일을 입력해주세요" value = "${adminVO.email}"/>
													<span class = "info"></span>
												</td>
											</tr>



										</tbody>
									</table>
									<input type="hidden" name="cmd" value="write" />
									<div class="btn">
										<div class="btnLeft">
											<a class="btns" href="list.do"><strong>목록</strong></a>
										</div>
										<div class="btnRight">
											<a id="reg_btn" class="btns" style="cursor: pointer;"><strong>등록</strong></a>
										</div>
									</div>
								</form>
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
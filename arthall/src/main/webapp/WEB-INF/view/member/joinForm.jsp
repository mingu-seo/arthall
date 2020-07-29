<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@ include file="/WEB-INF/view/include/headHtml.jsp"%>

<title>TheJoeun_Project</title>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.13.0/css/all.css"
	integrity="sha384-Bfad6CLCknfcloXFOyFnlgtENryhrpZCe29RTifKEixXQZ38WheV+i/6YWSzkz3V"
	crossorigin="anonymous">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/join.css">
<script src="<%=request.getContextPath()%>/js/join.js"></script>
<script>
	function empty() {

		if ($(this).val().trim() == "") {
			$(this).siblings('span').html(
					($(this).parent().siblings("th").text()) + "을(를) 입력해주세요.")
			$(this).focus();
		} else {
			$(this).siblings('span').html("")
		}
	}

	$(function() {
		$('#id')
				.keyup(
						function() {
							if ($('#id').val().trim() != '') {
								$
										.ajax({
											url : 'dupId.do?id='
													+ $('#id').val(),
											type : 'html',
											async : false,
											success : function(data) {
												if (data.trim() == 'false') {
													$("#dupChk")
															.html(
																	"<span style=color:red>이미 사용 중인 아이디입니다.</span>");
												} else {
													$("#dupChk")
															.html(
																	"<span style=color:green>사용 가능한 아이디입니다.</span>");
												}
											}
										});
							} else {
								$("#dupChk").html("아이디를 입력해 주세요");
							}
						}).click(empty);

		$("input:not(#id)").keyup(empty).click(empty);

		$("#reg_btn").click(function() {
			$("#frm").attr('action', '/member/join.do');
			$("#frm").submit();
		});

	});
</script>
</head>
<body>

	<div id="wrap">
		<a href="#" id="gomain">본문바로가기</a>
		<!-- S T A R T :: headerArea-->
		<header>
			<%@ include file="/WEB-INF/view/include/top.jsp"%>
		</header>
		<!-- E N D :: headerArea-->

		<div class="sub__tit">
			<h2>충무아트센터 회원가입</h2>
		</div>
		<div class="sub__container cf">
			<main id="main">
				<div class="main__siteLoad">
					<p>
						<a href="#">대메뉴</a> > <a href="#">중메뉴</a> > <a href="#">소메뉴</a>
					</p>
				</div>
				<div class="main__content">
					<div class="content__innerConts">
						<h3 class="innerConts__tit">충무아트센터</h3>
						<p>회원가입을 통해 충무아트센터의 멤버십혜택을 누려보세요.</p>
						<div class="innerConts__cont">
							<form class="join_form" method="post" action="" name="join_form">
								<fieldset>
									<legend></legend>
									<div class="form_list">
										<span class="star">*필수기입항목</span>
										<ul>
											<li><label for="id"><span>*</span>아이디:</label> <input
												type="text" name="id" id="id"
												placeholder="6자 이상의 영문과 숫자를 조합해 주세요" required="required">
												<button>
													<span id="dupChk">중복확인</span>
												</button></li>
											<li><label for="pw"><span>*</span>비밀번호:</label> <input
												type="password" name="pw" id="pw"
												placeholder="8자 이상의 영문과 숫자를 조합해 주세요" required="required">
											</li>
											<li><label for="pw2"><span>*</span>비밀번호확인:</label> <input
												type="password" name="pw2" id="pw2"
												placeholder="비밀번호를 다시 한 번 입력해주세요" required="required">
											</li>
											<li><label for="name"><span>*</span>이름:</label> <input
												type="text" name="name" id="name" placeholder="이름을 입력해 주세요"
												required="required"></li>
											<li><label for="sex"><span>*</span>성별:</label>
												<div class="sex">
													<input type="radio" name="sex" id="sex_man"><label
														for="sex_man">남성</label> <input type="radio" name="sex"
														id="sex_women"><label for="sex_three">여성</label> <input
														type="radio" name="sex" id="sex_three"><label
														for="sex_three">제 3의성</label> <input type="radio"
														name="sex" id="sex_none"><label for="sex_none">기재원치않음</label>
												</div></li>
											<li><label for="datepicker"><span>*</span>생년월일:</label>
												<input type="text" class="datepicker"
												placeholder="년도 / 월 / 일을 입력해주세요 (ex: 19920510)"> <!-- 다시 작업 필요 -->
											</li>
											<li><label for="tel"><span>*</span>연락처:</label> <input
												type="tel" name="tel" id="tel" placeholder="숫자만 입력해주세요"
												required="required"></li>
											<li><label for="address"><span>*</span>주소:</label> <input
												type="address" name="address" id="address" placeholder=""
												required="required">
												<button onclick="execDaumPostcode()">
													<span>우편번호 찾기</span>
												</button></li>
											<li><label for="address2"><span>*</span>상세주소:</label> <input
												type="address" name="address2" id="address2" placeholder=""
												required="required"></li>
											<li><label for="email"><span>*</span>이메일:</label>
												<div class="email_area">
													<input type="text" name="email1" id="email1"
														required="required"> <span>@</span>
												</div>
												<div class="email_select">
													<select>
														<option value="">직접입력</option>
														<option value="">naver.com</option>
														<option value="">daum.net</option>
														<option value="">gmail.com</option>
													</select>
												</div>
												<button>
													<span>인증번호 발송</span>
												</button></li>
											<li><label for="email_conf"><span>*</span>이메일 인증
													확인:</label> <input type="text" name="email_conf" id="email_conf"
												placeholder="인증번호를 입력하신 후 확인을 눌러주세요" required="required">
												<button>
													<span>인증번호 확인</span>
												</button></li>
											<li><input type="checkbox" name="chk1" id="chk1">
												<label for="chk1">충무아트센터에서 제공하는 정보를 메일로 받아보시겠습니까?
													(선택)</label></li>
											<li><input type="checkbox" name="chk2" id="chk2">
												<label for="chk2">충무아트센터에서 제공하는 정보를 SMS로 받아보시겠습니까?
													(선택)</label></li>
										</ul>
										<div class="btn_yn">
											<button>
												<span>확인</span>
											</button>
											<button>
												<span>취소</span>
											</button>
										</div>
									</div>
								</fieldset>
							</form>
						</div>
					</div>
			</main>
			<a href="#" class="topBtn">TOP</a>
		</div>
		<!-- S T A R T :: footer area  -->
		<footer>
			<%@ include file="/WEB-INF/view/include/footer.jsp"%>

		</footer>

		<!-- E N D :: footer area  -->
</body>
</html>
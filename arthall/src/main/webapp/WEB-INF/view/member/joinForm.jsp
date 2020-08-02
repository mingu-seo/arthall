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
	function check() {
		if ($('#id').val().trim() != '') {
			$.ajax({
				url : 'dupId.do?id='+ $('#id').val(),
				type : 'html',
				async : false,
				success : function(data) {
					var val = data.trim();
					if (val.trim() == "false") {
						alert("이미 사용중인 아이디입니다.");
						$("#id").val("");
						$("#dupChk").val("false")
						$("#id").focus();
					} else {
						alert("사용 가능한 아이디입니다.");
						$("#dupChk").val('true');
					}
				}
			});
		} else {
			alert("아이디를 입력해 주세요");
		}
		return false;
	}
	
	function sendMail() {
		if ($('#id').val().trim() != '') {
			$.ajax({
				url : 'sendMail.do?email='+ $('#email').val(),
				type : 'html',
				async : false,
				success : function(data) {
					var val = data.trim();
					if (val.trim() == "false") {
						alert("이메일을 입력해주세요.");
						$("#email").val("");
						$("#email_conf").val("false")
						$("#email").focus();
					} else {
						alert("인증이 완료되었습니다.");
						$("#email_conf").val('true');
					}
				}
			});
		} else {
			alert("이메일을 입력해주세요.");
		}
		return false;
	}
	
	function regist() {
		
		return false;
	}


</script>
<!-- 다음API -->
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    function zipcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("address").value = data.zonecode+' '+addr;
                
                } else {
                    document.getElementById("address").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                //document.getElementById('sample6_postcode').value = data.zonecode;
                //document.getElementById("sample6_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("address2").focus();
            }
        }).open();
    }
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
						<a href="#">대메뉴</a> > 
						<a href="#">중메뉴</a> > 
						<a href="#">소메뉴</a>
					</p>
				</div>
				<div class="main__content">
					<div class="content__innerConts">
						<h3 class="innerConts__tit">충무아트센터</h3>
						<p>회원가입을 통해 충무아트센터의 멤버십혜택을 누려보세요.</p>
						<div class="innerConts__cont">
							<form class="join_form" method="post" action="" name="join_form" onsubmit="return regist();">
								<fieldset>
									<legend></legend>
									<div class="form_list">
										<span class="star">*필수기입항목</span>
										<ul>
											<li>
												<label for="id"><span>*</span>아이디:</label> 
												<input type="text" name="id" id="id" placeholder="6자 이상의 영문과 숫자를 조합해 주세요" >
												<button id="dupChk" onclick="return check();"><span>중복확인</span></button>
											</li>
											<li>
												<label for="pw"><span>*</span>비밀번호:</label> 
												<input type="password" name="pw" id="pw" placeholder="8자 이상의 영문과 숫자를 조합해 주세요" >
											</li>
											<li>
												<label for="pw2"><span>*</span>비밀번호확인:</label> 
												<input type="password" name="pw2" id="pw2" placeholder="비밀번호를 다시 한 번 입력해주세요" >
											</li>
											<li>
												<label for="name"><span>*</span>이름:</label> 
												<input type="text" name="name" id="name" placeholder="이름을 입력해 주세요" >
											</li>
											<li>
												<label for="sex"><span>*</span>성별:</label>
												<div class="sex">
													<input type="radio" name="sex" id="sex_man"><label for="sex_man">남성</label>
													<input type="radio" name="sex" id="sex_women"><label for="sex_three">여성</label>
													<input type="radio" name="sex" id="sex_three"><label for="sex_three">제 3의성</label>
													<input type="radio" name="sex" id="sex_none"><label for="sex_none">기재원치않음</label>
												</div>
											</li>
											<li>
												<label for="datepicker"><span>*</span>생년월일:</label> 
												<input type="text" class="datepicker" placeholder="년도 / 월 / 일을 입력해주세요 (ex: 19920510)">
												<!-- 다시 작업 필요 -->
											</li>
											<li>
												<label for="tel"><span>*</span>연락처:</label> 
												<input type="tel" name="tel" id="tel" placeholder="숫자만 입력해주세요" >
											</li>
											<li>
												<label for="address"><span>*</span>주소:</label> 
												<input type="address" name="address" id="address" placeholder="" >
												<button onclick="zipcode()"><span>우편번호 찾기</span></button>
											</li>
											<li>
												<label for="address2"><span>*</span>상세주소:</label> 
												<input type="address" name="address2" id="address2" placeholder="">
											</li>
											<li>
												<label for="email"><span>*</span>이메일:</label> 
												<div class="email_area">
													<input type="text" name="email" id="email" >
												</div>
												<button><span>인증번호 발송</span></button>
											</li>
											<li>
												<label for="email_conf"><span>*</span>이메일 인증 확인:</label> 
												<input type="text" name="email_conf" id="email_conf" placeholder="인증번호를 입력하신 후 확인을 눌러주세요" >
												<button id="dupChk" onclick="return check();"><span>중복확인</span></button>
												<button><span>인증번호 확인</span></button>
											</li>
											<li>
												<input type="checkbox" name="chk1" id="chk1">
												<label for="chk1">충무아트센터에서 제공하는 정보를 메일로 받아보시겠습니까? (선택)</label>
											</li>
											<li>
												<input type="checkbox" name="chk2" id="chk2">
												<label for="chk2">충무아트센터에서 제공하는 정보를 SMS로 받아보시겠습니까? (선택)</label>
											</li>
										</ul>
										<div class="btn_yn">
											<button ><span>확인</span></button>
											<button ><span>취소</span></button>
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
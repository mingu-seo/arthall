<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@ include file="/WEB-INF/view/include/headHtml.jsp" %>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/join.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.13.0/css/all.css"
	integrity="sha384-Bfad6CLCknfcloXFOyFnlgtENryhrpZCe29RTifKEixXQZ38WheV+i/6YWSzkz3V"
	crossorigin="anonymous">
<!-- 다음API -->
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<!-- 스크립트 코드는 전부 밑에 경로의 .js 안에 들어있어요!! -->
<script src="<%=request.getContextPath()%>/js/join.js"></script>

</head>
<div id = "wrap">
	<a href="<%=request.getContextPath()%>/index.do" id="gomain">본문바로가기</a>
	<!-- S T A R T :: headerArea-->
	<header>
		<%@ include file="/WEB-INF/view/include/top.jsp" %>
	</header>
	<!-- E N D :: headerArea--> 
	<!-- S T A R T :: mainArea--> 
	<div class="sub__tit">
            <h2>로그인 &#183; 회원가입</h2>
        </div>
        <div class="sub__container cf">
            <main id="main">
                <div class="main__content">
                    <section class="content__innerConts">
                        <h3 class="innerConts__tit">충무아트센터 회원가입</h3>
                        <p>회원가입을 통해 충무아트센터의 멤버십혜택을 누려보세요.</p>
                        <div class="innerConts__cont">
                            <form class="join_form" method="post" action="" name="join_form">
                                <fieldset>
                                    <legend></legend>
                                    <div class="form_list">
                                        <span class="star">*필수기입항목</span>
                                        <ul>
                                            <li class="id_area">
                                                <label for="id"><span>*</span>아이디</label>
                                                <input type="text" name="id" id="id" placeholder="4~12자의 영문 대소문자와 숫자로만 입력해주세요">
                                                <button onclick="id_check();">중복확인</button>
                                            </li>
                                            <li class="pw_area">
                                                <label for="pw"><span>*</span>비밀번호</label>
                                                <input type="password" name="pw" id="pw" placeholder="4~12자의 영문 대소문자와 숫자로만 입력해주세요">
                                            </li>
                                            <li class="checkpw_area">
                                                <label for="checkpw"><span>*</span>비밀번호확인</label>
                                                <input type="password" name="checkpw" id="checkpw" placeholder="비밀번호를 다시 한 번 입력해주세요">
                                            </li>
                                            <li class="name_area">
                                                <label for="name"><span>*</span>이름</label>
                                                <input type="text" name="name" id="name" placeholder="이름을 입력해 주세요">
                                            </li>
                                            <li class="sex_area">
                                                <label for="sex"><span>*</span>성별</label>
                                                <div class="sex" id="sex">
                                                    <input type="radio" name="sex" id="sex_man"><label for="sex_man">남성</label>
                                                    <input type="radio" name="sex" id="sex_women"><label for="sex_women">여성</label>
                                                    <input type="radio" name="sex" id="sex_three"><label for="sex_three">제 3의성</label>
                                                    <input type="radio" name="sex" id="sex_none"><label for="sex_none">기재원치않음</label>
                                                </div>
                                            </li>
                                            <li class="date_area">
                                                <label for="datepicker"><span>*</span>생년월일</label>
                                                <input type="text" class="datepicker" id="datepicker" placeholder="년도 / 월 / 일을 입력해주세요 (ex: 19920510)" numberOnly maxlength="8">
                                            </li>
                                            <li class="tel_area">
                                                <label for="tel"><span>*</span>연락처</label>
                                                <input type="text" name="tel" id="tel" placeholder="숫자만 입력해주세요" numberOnly maxlength="11">
                                            </li>
                                            <li class="add_area">
                                                <label for="sample4_postcode"><span>*</span>주소</label>
                                                <input type="text" id="sample4_postcode" placeholder="우편번호">
                                                <input type="button" onclick="zipcode();" value="우편번호 찾기" id="post_btn">
                                                <input type="text" id="sample4_roadAddress" placeholder="도로명주소">
                                                <input type="text" id="sample4_jibunAddress" placeholder="지번주소">
                                                <span id="guide" style="color:#999;display:none"></span>
                                                <input type="text" id="sample4_detailAddress" placeholder="상세주소">
                                            </li>
                                            <li class="email_area">
                                                <label for="email"><span>*</span>이메일</label>
                                                <input type="text" name="email_id" id="email_id">
                                                <span>@</span>
                                                <input type="text" name="email_add" id="email_add" value="naver.com">
                                                <select class="email_sel" name="email_sel" id="email_sel" onchange="change_email();">
                                                    <option value="naver.com" selected>naver.com</option>
                                                    <option value="hanmail.com">hanmail.com</option>
                                                    <option value="google.com">google.com</option>
                                                    <option value="">직접입력</option>
                                                </select>
                                                <button onclick="email_send();">인증번호 발송</button>
                                            </li>
                                            <li class="email_conf_area">
                                                <label for="email_conf"><span>*</span>이메일 인증 확인</label>
                                                <input type="text" name="email_conf" id="email_conf" placeholder="인증번호를 입력하신 후 확인을 눌러주세요">
                                                <button onclick="email_sm();">인증번호 확인</button>
                                            </li>
                                            <li class="chk-1 chk_area">
                                                <input type="checkbox" name="chk1" id="chk1">
                                                <label for="chk1">충무아트센터에서 제공하는 정보를 메일로 받아보시겠습니까? (선택)</label>
                                            </li>
                                            <li class="chk-2 chk_area">
                                                <input type="checkbox" name="chk2" id="chk2">
                                                <label for="chk2">충무아트센터에서 제공하는 정보를 SMS로 받아보시겠습니까? (선택)</label>
                                            </li>
                                        </ul>
                                        <div class="btn_yn">
                                            <button type="submit" onclick="validate()">확인</button>
                                            <button type="reset">취소</button>
                                        </div>
                                    </div>
                                </fieldset>
                            </form>
                        </div>
                    </section>
                </div>
            </main>
        </div>
        <a href="#" class="topBtn">TOP</a>
	 
	<!-- E N D :: mainArea--> 
		
	<!-- S T A R T :: footer area  -->
	<footer>
		<%@ include file="/WEB-INF/view/include/footer.jsp" %>
	
	</footer>
	
	<!-- E N D :: footer area  -->
</div>
</body>
</html>
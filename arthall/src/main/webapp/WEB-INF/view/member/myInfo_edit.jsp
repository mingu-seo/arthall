<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@ include file="/WEB-INF/view/include/headHtml.jsp"%>

<title>충무아트센터 | 내 정보 조회</title>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.13.0/css/all.css"
	integrity="sha384-Bfad6CLCknfcloXFOyFnlgtENryhrpZCe29RTifKEixXQZ38WheV+i/6YWSzkz3V"
	crossorigin="anonymous">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/myInfo_edit.css">

<script>
	$(document).ready(function(){
		
		// 성별 체크
		$("input:radio[name='sex']:radio[value='${vo.gender}']").prop('checked', true);		
		
		// 이메일 광고 체크
		if ('${vo.ad_email}' == 1){
			$("input:checkbox[id='chk1']").attr("checked", true);
		} else {
			$("input:checkbox[id='chk1']").attr("checked", false);
		}
		
		// sms 광고 체크
		if ('${vo.ad_tel}' == 1){
			$("input:checkbox[id='chk2']").attr("checked", true);
		} else {
			$("input:checkbox[id='chk2']").attr("checked", false);
		}	
		
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
            <h2>내 정보 조회</h2>
        </div>
        <div class="sub__container cf">
            <aside class="container__subClass">
                <h3 class="subClass__tit"><i class="fas fa-id-card-alt"></i><br>마이페이지</h3>
                <nav class="subClass__list">
                    <ul>
                        <li><a href="<%=request.getContextPath()%>/member/mypage.do">내 정보 조회</a></li>
                        <li><a href="#">나의 예매내역</a></li>
                        <li><a href="#">나의 문의내역</a></li>
                    </ul>
                </nav>
            </aside>
            <main id="main">
                <div class="main__content">
                    <section class="content__innerConts">
                        <h3 class="innerConts__tit">내 정보 수정</h3>
                        <p>충무가족의 소중한 정보를 한 눈에 보고 수정할 수 있습니다. <br>
                      		 원하시는 메뉴를 선택해 편리하게 이용해보세요.</p>
                        <div class="innerConts__cont">
                            <form class="myInfoEdit_form" method="post" action="" name="myInfoEdit_form">
                                <fieldset>
                                    <legend>내 정보 수정</legend>
                                    <div class="form_list">
                                        <span class="star">*필수기입항목</span>
                                        <ul>
                                            <li class="pw_area">
                                                <label for="pw"><span>&nbsp;&nbsp;</span>비밀번호</label>
                                                <input type="password" name="pw" id="pw" placeholder="4~12자의 영문 대소문자와 숫자로만 입력해주세요">
                                            </li>
                                            <li class="checkpw_area">
                                                <label for="checkpw"><span>&nbsp;&nbsp;</span>비밀번호확인</label>
                                                <input type="password" name="checkpw" id="checkpw" placeholder="비밀번호를 다시 한 번 입력해주세요">
                                            </li>
                                            <li class="name_area">
                                                <label for="name"><span>&nbsp;&nbsp;</span>이름</label>
                                                <input type="text" name="name" id="name" value="${vo.name }" placeholder="이름을 입력해 주세요">
                                            </li>
                                            <li class="sex_area">
                                                <label for="sex"><span>&nbsp;&nbsp;</span>성별</label>
                                                <div class="sex" id="sex">
                                                    <input type="radio" name="sex" id="sex_man" value="1"><label for="sex_man">남성</label>
                                                    <input type="radio" name="sex" id="sex_women" value="2"><label for="sex_women">여성</label>
                                                    <input type="radio" name="sex" id="sex_three" value="3"><label for="sex_three">제 3의성</label>
                                                    <input type="radio" name="sex" id="sex_none" value="4"><label for="sex_none">기재원치않음</label>
                                                </div>
                                            </li>
                                            <li class="date_area">
                                                <label for="datepicker"><span>&nbsp;&nbsp;</span>생년월일</label>
                                                <input type="text" class="datepicker" id="datepicker" value="${vo.birth }" placeholder="년도 / 월 / 일을 입력해주세요 (ex: 19920510)" numberOnly maxlength="8">
                                            </li>
                                            <li class="tel_area">
                                                <label for="tel"><span>&nbsp;&nbsp;</span>연락처</label>
                                                <input type="text" name="tel" id="tel" value="${vo.tel }" placeholder="숫자만 입력해주세요" numberOnly maxlength="11">
                                            </li>
                                            <li class="add_area">
                                                <label for="sample4_postcode"><span>&nbsp;&nbsp;</span>주소</label>
                                                <input type="text" id="sample4_postcode" value="${vo.sample4_postcode }" placeholder="우편번호" readonly>
                                                <input type="button" onclick="sample4_execDaumPostcode();" value="우편번호 찾기" id="post_btn">
                                                <input type="text" id="sample4_roadAddress" value="${vo.sample4_roadAddress }" placeholder="도로명주소" readonly>
                                                <input type="text" id="sample4_jibunAddress" value="${vo.sample4_jibunAddress }" placeholder="지번주소" readonly>
                                                <span id="guide" style="color:#999;display:none"></span>
                                                <input type="text" id="sample4_detailAddress" value="${vo.sample4_detailAddress }" placeholder="상세주소">
                                            </li>
                                            <li class="email_area">
                                                <label for="email"><span>&nbsp;&nbsp;</span>이메일</label>
                                                <input type="text" name="email_id" id="email_id" value="${vo.email_id }" >
                                                <span>@</span>
                                                <input type="text" name="email_add" id="email_add" value="${vo.email_add }">
                                                <select class="email_sel" name="email_sel" id="email_sel" onchange="change_email();">
                                                   <option value="" selected>직접입력</option>
                                                    <option value="naver.com">네이버</option>
                                                    <option value="hanmail.com">다음</option>
                                                    <option value="gmail.com">구글</option>
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
                                            <button type="reset" id="cancle" onclick="cancel()">취소</button>
                                        </div>
                                    </div>
                                </fieldset>
                            </form>
                        </div>
                    </section>
                </div>
            </main>
            <a href="#" class="topBtn">TOP</a>
        </div>
	</div>
	<!-- S T A R T :: footer area  -->
	<footer>
		<%@ include file="/WEB-INF/view/include/footer.jsp"%>
	</footer>
	<!-- E N D :: footer area  -->
	
</body>
</html>
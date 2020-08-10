<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0">
    <title>충무아트센터 | 결제하기</title>
    <link rel="icon" sizes="16x16" type="image.png" href="<%= request.getContextPath() %>/img/favicon.png">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.13.0/css/all.css" integrity="sha384-Bfad6CLCknfcloXFOyFnlgtENryhrpZCe29RTifKEixXQZ38WheV+i/6YWSzkz3V" crossorigin="anonymous">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/css/payment.css">
    <script src="<%= request.getContextPath() %>/js/forEachPolyfill.js"></script>
    <script src="<%= request.getContextPath() %>/js/payment.js" defer></script>
    <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
    <script>
   	function check(){
//    		if ($("#cardCorp option:selected").val() != null){
//    			alert("1");
//    			$('input[name=pay]').val("신용/체크카드");
//    		}
//    		if ($("#smartphonePaymentCorp option:selected").val() != null){
//    			alert("2");
//    			$('input[name=pay]').val("간편 결제");
//    		}
//    		if ($("#bankCorp option:selected").val() != null){
//    			alert("3");
//    			$('input[name=pay]').val("무통장입금");
//    		}
//    		if ($("#mobilePaymentCorp option:selected").val() != null){
//    			alert("4");
//    			$('input[name=pay]').val("휴대폰 결제");
//    		}
   		alert("결제 완료 되었습니다");
//    		window.close();
   	}
    </script>
</head>

<body>
    <div id="wrap">
        <main id="main">
            <section class="main__content">
                <h1 class="cf"><span>결제하기</span><img src="<%= request.getContextPath() %>/img/logo-b.png" alt="충무아트센터 로고"></h1>
                <div class="content__paymentBox paymentBox cf">
                    <article class="paymentBox__paymentMethod">
                        <h2 class="paymentMethod__tit"><span>결제방법</span></h2>
                        <ul class="paymentMethod__paymentMethodContainer paymentMethodContainer cf">
                            <li class="paymentMethodContainer__list">
                                <input type="radio" id="card" name="pay" value="신용/체크카드" form="paymentForm" class="hidden"> 
                                <label for="card"><i class="fas fa-credit-card fa-3x"></i>신용/체크카드</label>
                            </li>
                            <li class="paymentMethodContainer__list">
                                <input type="radio" id="smartphonePayment" name="pay" value="간편 결제" form="paymentForm" class="hidden">
                                <label for="smartphonePayment"><i class="fas fa-money-check-alt fa-3x"></i>간편 결제</label>
                            </li>
                            <li class="paymentMethodContainer__list">
                                <input type="radio" id="bank" name="pay" value="무통장입금" form="paymentForm" class="hidden"> 
                                <label for="bank"><i class="fas fa-piggy-bank fa-3x"></i>무통장입금</label>
                            </li>
                            <li class="paymentMethodContainer__list">
                                <input type="radio" id="mobilePayment" name="pay" value="휴대폰 결제" form="paymentForm" class="hidden"> 
                                <label for="mobilePayment"><i class="fas fa-mobile-alt fa-3x"></i>휴대폰 결제</label>
                            </li>
                        </ul>
                    </article>
                    <article class="paymentBox__paymentChoose">
                        <h2 class="paymentChoose__tit"><span>결제수단</span></h2>
                        <div class="paymentChoose__container paymentCorpContainer">
                            <div class="paymentCorpContainer__card paymentCorp">
                                <ul class="card__cardInfo">
                                    <li class="cf">
                                        <select name="cardCorp" id="cardCorp" form="paymentForm">
                                            <option value="" selected>카드사 선택</option>
                                            <option value="BC">BC</option>
                                            <option value="KB국민">KB국민</option>
                                            <option value="NH">NH</option>
                                            <option value="롯데">롯데</option>
                                            <option value="삼성">삼성</option>
                                            <option value="신한">신한</option>
                                            <option value="씨티">씨티</option>
                                            <option value="우리">우리</option>
                                            <option value="하나">하나</option>
                                            <option value="현대">현대</option>
                                        </select>
                                        <input type="text" id="cardNum" form="paymentForm" placeholder="'-'를 제외한 카드번호" maxlength="16">
                                    </li>
                                    <li>
                                        <input type="checkbox" id="cardAgree" form="paymentForm"><label for="cardAgree">개인정보제공동의</label>
                                    </li>
                                </ul>
                                <p class="card__text textBox">*모의 결제창입니다. 실제 결제가 이루어지지 않습니다. 카드번호입력란에 아무 숫자 입력 후 완료버튼을 누르시면 결제가 완료됩니다.</p>
                            </div>
                            <div class="paymentCorpContainer__smartphonePayment paymentCorp">
                                <ul class="smartphonePayment__smartphonePaymentInfo">
                                    <li class="cf">
                                        <select name="smartphonePaymentCorp" id="smartphonePaymentCorp" form="paymentForm">
                                            <option value="" selected>간편결제 선택</option>
                                            <option value="카카오페이">카카오페이</option>
                                            <option value="PAYCO">PAYCO</option>
                                            <option value="스마일페이">스마일페이</option>
                                            <option value="네이버페이">네이버페이</option>
                                            <option value="토스">토스</option>
                                        </select>
                                    </li>
                                    <li>
                                        <input type="checkbox" id="smartphonePaymentAgree" form="paymentForm"><label for="smartphonePaymentAgree">개인정보제공동의</label>
                                    </li>
                                </ul>
                                <p class="smartphonePayment__text textBox">*모의 결제창입니다. 실제 결제가 이루어지지 않습니다. 결제방법 선택 후 결제완료 버튼을 누르시면 결제가 완료됩니다.</p>
                            </div>
                            <div class="paymentCorpContainer__bank paymentCorp">
                                <ul class="bank__bankInfo">
                                    <li class="cf">
                                        <select name="bankCorp" id="bankCorp" form="paymentForm">
                                            <option value="" selected>은행 선택</option>
                                            <option value="IBK기업">IBK기업</option>
                                            <option value="KB국민">KB국민</option>
                                            <option value="KDB산업">KDB산업</option>
                                            <option value="KEB하나">KEB하나</option>
                                            <option value="NH농협">NH농협</option>
                                            <option value="SC제일">SC제일</option>
                                            <option value="신한">신한</option>
                                            <option value="씨티">씨티</option>
                                            <option value="우리">우리</option>
                                            <option value="카카오뱅크">카카오뱅크</option>
                                        </select>
                                    </li>
                                    <li>
                                        <input type="checkbox" id="bankAgree" form="paymentForm"><label for="bankAgree">개인정보제공동의</label>
                                    </li>
                                </ul>
                                <p class="bank__text textBox">*모의 결제창입니다. 실제 결제가 이루어지지 않습니다. 은행 선택 후 결제완료 버튼을 누르시면 결제가 완료됩니다.</p>
                            </div>
                            <div class="paymentCorpContainer__mobilePayment paymentCorp">
                                <ul class="mobilePayment__mobilePaymentInfo">
                                    <li class="cf">
                                        <select name="mobilePaymentCorp" id="mobilePaymentCorp" form="paymentForm">
                                            <option value="" selected>통신사 선택</option>
                                            <option value="SKT">SKT</option>
                                            <option value="LG U+">LG U+</option>
                                            <option value="KT">KT</option>
                                            <option value="알뜰폰">알뜰폰</option>
                                        </select>
                                        <input type="tel" id="mobileNum" form="paymentForm" placeholder="'-'를 제외한 휴대폰번호" maxlength="11">
                                    </li>
                                    <li>
                                        <input type="checkbox" id="mobilePaymentAgree" form="paymentForm"><label for="mobilePaymentAgree">개인정보제공동의</label>
                                    </li>
                                </ul>
                                <p class="mobilePayment__text textBox">*모의 결제창입니다. 실제 결제가 이루어지지 않습니다. 아무 숫자 입력 후 결제완료 버튼을 누르시면 결제가 완료됩니다.</p>
                            </div>
                        </div>
                    </article>
                    <article class="paymentBox__resultPayment">
                       <h2 class="resultPayment__tit"><span>결제정보</span></h2>
                        <form method="post" action="reservOne.do" name="paymentForm" id="paymentForm">
                        <input type="hidden" name="pay" value="">
                        <input type="hidden" name="playName" value="${vo.playName}">
                        <input type="hidden" name="time" value="${vo.time}">
                        <input type="hidden" name="playDate" value="${vo.reservDate}">
                            <fieldset>
                                <legend>결제정보</legend>
                                <p class="paymentForam__paymentInfo">
                                    <span>뮤지컬 &lt;${vo.playName}&gt;</span><br>
                                    <span>${vo.reservDate}</span><br>
                                    <span>${vo.time}</span><br>
                                    <c:if test="${ticket.seatType != ''}">
                                    	<span>${ticket.seatType}</span><br>
                                    </c:if>
                                    <c:if test="${ticket.seatType1 != ''}">
                                    	<span>${ticket.seatType1}</span><br>
                                    </c:if>
                                    <c:if test="${ticket.seatType2 != ''}">
                                    	<span>${ticket.seatType2}</span><br>
                                    </c:if>
                                    <span>${ticket.priceAll}</span>
                                </p>
                                <input type="submit" class="paymentForm__submit" value="결제완료" onclick="check();">
                            </fieldset>
                        </form>
                    </article>
                </div>
            </section>
        </main>
    </div>
</body></html>

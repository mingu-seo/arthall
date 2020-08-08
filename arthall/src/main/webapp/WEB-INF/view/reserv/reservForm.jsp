<%@ page contentType="text/html; charset=utf-8" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0">
    <title>충무아트센터 | 예매하기</title>
    <link rel="icon" sizes="16x16" type="image.png" href="<%= request.getContextPath() %>/img/favicon.png">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.13.0/css/all.css" integrity="sha384-Bfad6CLCknfcloXFOyFnlgtENryhrpZCe29RTifKEixXQZ38WheV+i/6YWSzkz3V" crossorigin="anonymous">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/css/ticketing.css">
    <script src="<%= request.getContextPath() %>/js/forEachPolyfill.js" defer></script>
    <script src="<%= request.getContextPath() %>/js/calrendar.js" defer></script>
    <script src="<%= request.getContextPath() %>/js/ticketing.js" defer></script>
    <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script>
function check(){
	if ($("#resultBox__date").val() == ""){
		alert("날짜를 선택하세요");
	} else if ($("#resultBox__time").val()== ""){
		alert("시간을 선택하세요");
	} else if ($("#resultBox__price").val() == ""){
		alert("좌석을 선택하세요");
	} else {
		$("#tiket__form").submit();
	}
	
}
</script>
</head>

<body>
    <div id="wrap">
        <main id="main">
            <section class="content__innerConts ticketBox">
                <div class="ticketBox__titArea cf">
                    <h1><img src="<%= request.getContextPath() %>/img/logo-b.png" alt="충무아트센터 로고"></h1>
                    <article class="ticketBox__ticketBoxInner ticketInfo cf">
                        <h2 class="ticketBoxInner__tit">예매하기</h2>
                        <p>
                            <strong class="ticketInfo__showName">뮤지컬 &lt;프랑켄슈타인&gt;</strong>
                            <span class="ticketInfo__showInfo">충무아트센터 대극장
                                <span id="period">2020.07.10~2020.09.15</span>
                            </span>
                        </p>
                    </article>
                </div>
                <article class="ticketBox__ticketBoxInner dateInfo">
                    <h2 class="ticketBoxInner__tit">날짜선택</h2>
                    <div id="calendarContainer">
                        <div class="calendarContainer__calendars cf">
                            <div class="calendars__prevContainer">
                                <table class="calendars__prevMonth">
                                    <thead class="prevMonth__days">
                                        <tr class="month">
                                            <th colspan="7"><span class="month__text">2020년 7월</span></th>
                                        </tr>
                                        <tr class="days">
                                            <th class="sun">SUN</th>
                                            <th>MON</th>
                                            <th>TUE</th>
                                            <th>WED</th>
                                            <th>THU</th>
                                            <th>FRI</th>
                                            <th class="sat">SAT</th>
                                        </tr>
                                    </thead>
                                    <tbody class="prevCalBody calBody">

                                        <!--
                                                    <tr>
                                                        <td class="days sun"><span>1</span></td>
                                                        <td class="days disable"><span>2</span></td>
                                                        <td class="days"><span>3</span></td>
                                                        <td class="days"><span>4</span></td>
                                                        <td class="days"><span>5</span></td>
                                                        <td class="days"><span>6</span></td>
                                                        <td class="days sat"><span>7</span></td>
                                                    </tr>
                                                    <tr>
                                                        <td class="days sun"><span>1</span></td>
                                                        <td class="days"><span>2</span></td>
                                                        <td class="days"><span>3</span></td>
                                                        <td class="days"><span>4</span></td>
                                                        <td class="days"><span>5</span></td>
                                                        <td class="days"><span>6</span></td>
                                                        <td class="days sat"><span>7</span></td>
                                                    </tr>
                                                    <tr>
                                                        <td class="days sun"><span>1</span></td>
                                                        <td class="days"><span>2</span></td>
                                                        <td class="days"><span>3</span></td>
                                                        <td class="days"><span>4</span></td>
                                                        <td class="days"><span>5</span></td>
                                                        <td class="days today"><span>6</span></td>
                                                        <td class="days sat"><span>7</span></td>
                                                    </tr>
                                                    <tr>
                                                        <td class="days sun"><span>1</span></td>
                                                        <td class="days"><span>2</span></td>
                                                        <td class="days"><span>3</span></td>
                                                        <td class="days"><span>4</span></td>
                                                        <td class="days"><span>5</span></td>
                                                        <td class="days"><span>6</span></td>
                                                        <td class="days sat"><span>7</span></td>
                                                    </tr>
                                                    <tr>
                                                        <td class="days sun"><span>1</span></td>
                                                        <td class="days"><span>2</span></td>
                                                        <td class="days"><span>3</span></td>
                                                        <td class="days"><span>4</span></td>
                                                        <td class="days"><span>5</span></td>
                                                        <td class="days"><span>6</span></td>
                                                        <td class="days sat"><span>7</span></td>
                                                    </tr>
                                                    <tr>
                                                        <td class="days sun"><span>1</span></td>
                                                        <td class="days"><span>2</span></td>
                                                        <td class="days"><span>3</span></td>
                                                        <td class="days"><span>4</span></td>
                                                        <td class="days"><span>5</span></td>
                                                        <td class="days"><span>6</span></td>
                                                        <td class="days sat"><span>7</span></td>
                                                    </tr>
                                                    <tr>
                                                        <td class="days sun"><span>1</span></td>
                                                        <td class="days"><span>2</span></td>
                                                        <td class="days"><span>3</span></td>
                                                        <td class="days"><span>4</span></td>
                                                        <td class="days"><span>5</span></td>
                                                        <td class="days"><span>6</span></td>
                                                        <td class="days sat"><span>7</span></td>
                                                    </tr>
-->

                                    </tbody>
                                </table>
                            </div>
                            <div class="calendars__nextContainer">
                                <table class="calendars__nextMonth">
                                    <thead class="nextMonth__days">
                                        <tr class="month">
                                            <th colspan="7"><span class="month__text">2020년 8월</span></th>
                                        </tr>
                                        <tr class="days">
                                            <th class="sun">SUN</th>
                                            <th>MON</th>
                                            <th>TUE</th>
                                            <th>WED</th>
                                            <th>THU</th>
                                            <th>FRI</th>
                                            <th class="sat">SAT</th>
                                        </tr>
                                    </thead>
                                    <tbody class="nextCalBody calBody">
                                        <!--
                                                    <tr>
                                                        <td class="days sun"><span>1</span></td>
                                                        <td class="days"><span>2</span></td>
                                                        <td class="days"><span>3</span></td>
                                                        <td class="days"><span>4</span></td>
                                                        <td class="days"><span>5</span></td>
                                                        <td class="days"><span>6</span></td>
                                                        <td class="days sat"><span>7</span></td>
                                                    </tr>
                                                    <tr>
                                                        <td class="days sun"><span>1</span></td>
                                                        <td class="days"><span>2</span></td>
                                                        <td class="days"><span>3</span></td>
                                                        <td class="days"><span>4</span></td>
                                                        <td class="days"><span>5</span></td>
                                                        <td class="days"><span>6</span></td>
                                                        <td class="days sat"><span>7</span></td>
                                                    </tr>
                                                    <tr>
                                                        <td class="days sun"><span>1</span></td>
                                                        <td class="days"><span>2</span></td>
                                                        <td class="days"><span>3</span></td>
                                                        <td class="days"><span>4</span></td>
                                                        <td class="days"><span>5</span></td>
                                                        <td class="days"><span>6</span></td>
                                                        <td class="days sat"><span>7</span></td>
                                                    </tr>
                                                    <tr>
                                                        <td class="days sun"><span>1</span></td>
                                                        <td class="days"><span>2</span></td>
                                                        <td class="days"><span>3</span></td>
                                                        <td class="days"><span>4</span></td>
                                                        <td class="days"><span>5</span></td>
                                                        <td class="days"><span>6</span></td>
                                                        <td class="days sat"><span>7</span></td>
                                                    </tr>
                                                    <tr>
                                                        <td class="days sun"><span>1</span></td>
                                                        <td class="days"><span>2</span></td>
                                                        <td class="days"><span>3</span></td>
                                                        <td class="days"><span>4</span></td>
                                                        <td class="days"><span>5</span></td>
                                                        <td class="days"><span>6</span></td>
                                                        <td class="days sat"><span>7</span></td>
                                                    </tr>
                                                    <tr>
                                                        <td class="days sun"><span>1</span></td>
                                                        <td class="days"><span>2</span></td>
                                                        <td class="days"><span>3</span></td>
                                                        <td class="days"><span>4</span></td>
                                                        <td class="days"><span>5</span></td>
                                                        <td class="days"><span>6</span></td>
                                                        <td class="days sat"><span>7</span></td>
                                                    </tr>
                                                    <tr>
                                                        <td class="days sun"><span>1</span></td>
                                                        <td class="days"><span>2</span></td>
                                                        <td class="days"><span>3</span></td>
                                                        <td class="days"><span>4</span></td>
                                                        <td class="days"><span>5</span></td>
                                                        <td class="days"><span>6</span></td>
                                                        <td class="days sat"><span>7</span></td>
                                                    </tr>
-->
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="calBtn">
                            <a href="#" class="calBtn__prev disable"><i class="fas fa-chevron-left fa-3x"></i></a>
                            <a href="#" class="calBtn__next"><i class="fas fa-chevron-right fa-3x"></i></a>
                        </div>
                    </div>
                </article>
                <div class="ticketBox__choose cf">
                    <article class="ticketBox__ticketBoxInner timeInfo">
                        <h2 class="ticketBoxInner__tit">회차선택</h2>
                        <ol class="timeInfo__timeTable">
                            <li class="timeTable__list">
                            <!-- 전시회랑 아닌거 if문 걸기 -->
                                <span class="list__Time">11:00~20:00</span>
                                <p>전시 입장 마감 시간은 19:00입니다.</p>
                            </li>
                            <li class="timeTable__list">
                                <span class="list__Time">20:00</span>
                                <p>출연 : 박건형 · 최우혁 · 박혜나 · 이지수 · 홍경수 · 이희정</p>
                            </li>
                        </ol>
                    </article>
                    <article class="ticketBox__ticketBoxInner classInfo">
                        <h2 class="ticketBoxInner__tit">좌석등급선택</h2>
                        <ul class="classInfo__classTable">
                            <li class="classTable__classList vipClass cf">
                                <span class="classList__seatClass">VIP석</span>
                                <span class="classList__seatPrice">150,000원</span>
                                <input type="number" value="1" min="1" max="10" step="1" class="classList__seatNumber">
                            </li>
                            <li class="classTable__classList rClass cf">
                                <span class="classList__seatClass">R석</span>
                                <span class="classList__seatPrice">130,000원</span>
                                <input type="number" value="1" min="1" max="10" step="1" class="classList__seatNumber">
                            </li>
                            <li class="classTable__classList sClass cf">
                                <span class="classList__seatClass">S석</span>
                                <span class="classList__seatPrice">100,000원</span>
                                <input type="number" value="1" min="1" max="10" step="1" class="classList__seatNumber">
                            </li>
                            <li class="classTable__classList aClass cf">
                                <span class="classList__seatClass">A석</span>
                                <span class="classList__seatPrice">80,000원</span>
                                <input type="number" value="1" min="1" max="10" step="1" class="classList__seatNumber">
                            </li>
                            <li class="classTable__classList bClass cf">
                                <span class="classList__seatClass">B석</span>
                                <span class="classList__seatPrice">60,000원</span>
                                <input type="number" value="1" min="1" max="10" step="1" class="classList__seatNumber">
                            </li>
                            <li class="classTable__classList wheelClass cf">
                                <span class="classList__seatClass">휠체어석</span>
                                <span class="classList__seatPrice">60,000원</span>
                                <input type="number" value="1" min="1" max="10" step="1" class="classList__seatNumber">
                            </li>
                        </ul>
                    </article>
                    <article class="ticketBox__ticketBoxInner tiketInfo">
                        <h2 class="ticketBoxInner__tit">나의 예매현황</h2>
                        <form method="post" action="payment.do" name="tiket__form" id="tiket__form" class="tiketInfo__form">
                            <fieldset>
                                <legend>예매현황</legend>
                                <ul class="form__resultBox">
                                    <li class="cf">
                                        <label for="resultBox__date">날짜</label><input type="text" id="resultBox__date" name="resultBox__date" value="" required disabled>
                                    </li>
                                    <li class="cf">
                                        <label for="resultBox__time">시간</label><input type="text" id="resultBox__time" value="" required disabled>
                                    </li>
                                    <li class="resultBox__classList cf">
                                        <label for="resultBox__vipClass">VIP석</label><input type="text" id="resultBox__vipClass" class="resultBox__class" value="" disabled>
                                    </li>
                                    <li class="resultBox__classList cf">
                                        <label for="">R석</label><input type="text" id="resultBox__rClass" class="resultBox__class" value="" disabled>
                                    </li>
                                    <li class="resultBox__classList cf">
                                        <label for="">S석</label><input type="text" id="resultBox__sClass" class="resultBox__class" value="" disabled>
                                    </li>
                                    <li class="resultBox__classList cf">
                                        <label for="">A석</label><input type="text" id="resultBox__aClass" class="resultBox__class" value="" disabled>
                                    </li>
                                    <li class="resultBox__classList cf">
                                        <label for="">B석</label><input type="text" id="resultBox__bClass" class="resultBox__class" value="" disabled>
                                    </li>
                                    <li class="resultBox__classList cf">
                                        <label for="">휠체어석</label><input type="text" id="resultBox__wheelClass" class="resultBox__class" value="" disabled>
                                    </li>
                                    <li class="cf">
                                        <label for="resultBox__price">가격</label><input type="text" id="resultBox__price" value="" required disabled>
                                    </li>
                                </ul>
                                <input type="button" class="form__submit" value="다음 단계로" onclick="check();">
                            </fieldset>
                        </form>
                    </article>
                </div>
            </section>
        </main>
    </div>
</body>

</html>

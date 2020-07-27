<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0">
    <title>예매하기</title>
    <link rel="icon" sizes="16x16" type="image.png" href="<%=request.getContextPath() %>/img/favicon.png">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.13.0/css/all.css" integrity="sha384-Bfad6CLCknfcloXFOyFnlgtENryhrpZCe29RTifKEixXQZ38WheV+i/6YWSzkz3V" crossorigin="anonymous">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/ticketing.css">
    <script src="<%=request.getContextPath() %>/js/jquery-1.11.3.min.js"></script>
</head>

<body>
    <div id="wrap">
        <a href="#main" id="gomain">본문바로가기</a>
        <header>
            <div class="header-inner cf">
                <h1><a href="index.html"><span class="hidden">logo</span><img src="<%=request.getContextPath() %>/img/logo.png" alt="logo"></a>
                </h1>

                <div class="right_nav">
                    <ul class="tnb cf">
                        <li><a href="./login.html">로그인</a></li>
                        <li><a href="./join.html">회원가입</a></li>
                        <li><a href="./mypage.html">마이페이지</a></li>
                    </ul>
                    <nav class="gnb">
                        <ul class="cf">
                            <li class="hover">
                                <a href="#"><span>충무아트센터 소개</span></a>
                                <ul>
                                    <li><a href="#">기관 및 재단소개</a></li>
                                    <li><a href="#">좌석배치도</a></li>
                                    <li><a href="#">층별안내</a></li>
                                    <li><a href="#">오시는길</a></li>
                                    <li><a href="#">편의시설</a></li>
                                    <li><a href="#">주차시설</a></li>
                                </ul>
                            </li>
                            <li class="hover">
                                <a href="#"><span>공연·전시·행사</span></a>
                                <ul>
                                    <li><a href="#">캘린더</a></li>
                                    <li><a href="#">공연정보</a></li>
                                    <li><a href="#">전시정보</a></li>
                                    <li><a href="#">행사정보</a></li>
                                </ul>
                            </li>
                            <li class="hover">
                                <a href="#"><span>뉴스·소식</span></a>
                                <ul>
                                    <li><a href="#">공지사항</a></li>
                                    <li><a href="#">뉴스/이슈</a></li>
                                </ul>
                            </li>
                            <li class="hover">
                                <a href="#"><span>대관안내</span></a>
                                <ul>
                                    <li><a href="#">대관시설</a></li>
                                    <li><a href="#">대관규정</a></li>
                                    <li><a href="#">대관절차</a></li>
                                    <li><a href="#">대관신청</a></li>
                                </ul>
                            </li>
                            <li class="hover">
                                <a href="#"><span>고객센터</span></a>
                                <ul>
                                    <li><a href="#">회원혜택</a></li>
                                    <li><a href="fqa.html">자주하는 질문</a></li>
                                    <li><a href="inquiry.html">1:1 문의</a></li>
                                    <li><a href="#">관람예절</a></li>
                                </ul>
                            </li>
                        </ul>
                    </nav>
                </div>
                <form class="search" action="action_page.php">
                    <input type="search" name="search" class="t_box" placeholder="&nbsp;&nbsp;&nbsp;검색어를 입력해주세요">
                    <button type="submit" class="submit"><i class="fa fa-search"></i></button>
                </form>
            </div>
        </header>

        <div class="sub__tit">
            <h2>예매하기</h2>
        </div>
        <div class="sub__container cf">
            <aside class="container__subClass">
                <h3 class="subClass__tit">중메뉴</h3>
                <nav class="subClass__list">
                    <ul>
                        <li><a href="#">소메뉴1</a></li>
                        <li><a href="#">소메뉴2</a></li>
                        <li><a href="#">소메뉴3</a></li>
                        <li><a href="#">소메뉴4</a></li>
                    </ul>
                </nav>
            </aside>
            <main id="main">
                <div class="main__siteLoad">
                    <p>
                        <a href="#">대메뉴</a> &gt;
                        <a href="#">중메뉴</a> &gt;
                        <a href="#">예매하기</a>
                    </p>
                </div>
                <div class="main__content">
                    <div class="content__innerConts">
                        <h3 class="innerConts__tit">예매하기</h3>

                        <div class="innerConts__cont ticketBox">

                            <div class="ticketBox__titArea cf">
                                <h4><img src="<%=request.getContextPath() %>/img/logo.png" alt="충무아트센터 로고"></h4>
                                <!--?-->
                                <article class="ticketBox__ticketBoxInner ticketInfo cf">
                                    <h5 class="ticketBoxInner__tit">예매하기</h5>
                                    <p>
                                        <strong class="ticketInfo__showName">뮤지컬 &lt;프랑켄슈타인&gt;</strong>
                                        <span class="ticketInfo__showInfo">T-joeun아트센터 대극장
                                            <span id="period">${vo.startDate}~${vo.endDate}</span>
                                        </span>
                                    </p>
                                </article>
                            </div>
                            <article class="ticketBox__ticketBoxInner dateInfo">
                                <h5 class="ticketBoxInner__tit">날짜선택</h5>
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
                                                        <td class="days "><span>2</span></td>
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
                                    <h5 class="ticketBoxInner__tit">회차선택</h5>
                                    <ol class="timeInfo__timeTable">
                                        <li class="timeTable__list">
                                            <span class="list__Time">15:00</span>
                                            <p>출연 : ${vo.actor}</p>
                                        </li>
                                        <li class="timeTable__list">
                                            <span class="list__Time">20:00</span>
                                            <p>출연 : ${vo.actor}</p>
                                        </li>
                                        <li class="timeTable__list">
                                            <span class="list__Time">21:00</span>
                                            <p>출연 : ${vo.actor}</p>
                                        </li>
                                    </ol>
                                </article>
                                
<!--                                 여기서부터 전시, 공연 페이지가 바뀜 -->
                                <c:if test="${vo.exhPrice != 0}">
	                                <article class="ticketBox__ticketBoxInner classInfo">
	                                    <h5 class="ticketBoxInner__tit">좌석등급선택</h5>
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
                                </c:if>
                                
                                <article class="ticketBox__ticketBoxInner tiketInfo">
                                    <h5 class="ticketBoxInner__tit">나의 예매현황</h5>
                                    <form method="post" action="#" name="tiket__form" id="tiket__form" class="tiketInfo__form">
                                        <fieldset>
                                            <legend>예매현황</legend>
                                            <ul class="form__resultBox">
                                                <li class="cf">
                                                    <label for="resultBox__date">날짜</label><input type="text" id="resultBox__date" value="" required disabled>
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
                                            <!--                                            <button type="submit" class="form__submit">다음단계로</button>-->
                                            <input type="submit" class="form__submit" value="다음 단계로">
                                        </fieldset>
                                    </form>
                                    <!--<p class="tiketInfo__resultBox">
                                                <span class="resultBox__date">2020년 7월 16일 수요일</span>
                                                <span class="resultBox__time">20:00</span>
                                                <span class="resultBox__class">VIP</span>
                                                <span class="resultBox__price">150,000원</span>
                                            </p>-->
                                </article>
                            </div>

                        </div>
                    </div>
                </div>
            </main>
            <a href="#" class="topBtn">TOP</a>
        </div>
        <footer>
            <div class="footerinner">
                <div class="footerinner__top cf">
                    <h2><a href="#"><img src="<%=request.getContextPath() %>/img/logo.png" alt="로고"></a></h2>
                    <div class="top__links">
                        <div class="links__sns cf">
                            <a href="#"><i class="fab fa-facebook-f fa-2x"></i></a>
                            <a href="#"><i class="fab fa-twitter fa-2x"></i></a>
                            <a href="#"><i class="fab fa-instagram fa-2x"></i></a>
                            <a href="#"><i class="fas fa-share-alt fa-2x"></i></a>
                            <a href="#"><i class="far fa-envelope fa-2x"></i></a>
                        </div>
                        <ul class="links__list cf">
                            <li><a href="#">이용약관</a></li>
                            <li><a href="#">행정정보공개</a></li>
                            <li><a href="#">이메일수집거부</a></li>
                            <li><a href="#">개인정보취급방침</a></li>
                            <li><a href="#">사이트맵</a></li>
                            <li>
                                <select name="site" id="">
                                    <option value="">관련사이트 바로가기</option>
                                    <option value="사이트1">사이트1</option>
                                    <option value="사이트2">사이트2</option>
                                    <option value="사이트3">사이트3</option>
                                    <option value="사이트4">사이트4</option>
                                    <option value="사이트5">사이트5</option>
                                </select>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="footerinner__bottom cf">
                    <div class="bottom__left">
                        <address>
                            사업자등록번호 : 201-82-06405 <br>
                            통신판매번호 : 제2008-서울중구-1218호 <br>
                            주소 : 서울시 중구 퇴계로 387(흥인동 131)
                        </address>
                        <p>COPY &copy; CHUNGMU ARTS CENTER</p>
                    </div>
                    <div class="bottom__right">
                        <a href="tel:02-2230-6600">02.2230.6600</a>
                        <p>
                            상담시간 : 월~금 09:30~18:30 <br>
                            점심시간 : 12:00~13:00 <br>
                            주말 및 공휴일 휴무
                        </p>
                    </div>
                </div>
            </div>
        </footer>
    </div>
    <script src="<%=request.getContextPath() %>/js/header.js"></script>
    <script src="<%=request.getContextPath() %>/js/calrendar.js"></script>
    <script src="<%=request.getContextPath() %>/js/ticketing.js"></script>
</body>

</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0">
    <title>충무아트센터</title>
    <link rel="icon" sizes="16x16" type="image.png" href="img/favicon.png">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.13.0/css/all.css" integrity="sha384-Bfad6CLCknfcloXFOyFnlgtENryhrpZCe29RTifKEixXQZ38WheV+i/6YWSzkz3V" crossorigin="anonymous">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/main.css">
    <script src="<%=request.getContextPath() %>/js/jquery-1.11.3.min.js"></script>
    <script src="<%=request.getContextPath() %>/js/jquery-ui-1.10.3.custom.min.js"></script>
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
                                    <li><a href="#">자주하는 질문</a></li>
                                    <li><a href="#">1:1 문의</a></li>
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
        <section class="mainVisual">
            <div class="visualView">
                <div class="bg1">
                </div>

                <div class="bg2">
                </div>

                <div class="bg3">
                </div>

                <div class="bg4">
                </div>

                <div class="bg5">
                </div>
            </div>

            <div class="visual cf">
                <div class="bg1">
                    <div class="textView">
                        <h4>간단한 공연홍보문구</h4>
                        <h2>공연제목</h2>
                        <p>공연기간</p>
                        <p>공연장소</p>
                        <p><a href="#">예매하기</a></p>
                        <p><a href="#">상세정보</a></p>
                    </div>
                </div>
                <div class="bg2">
                    <div class="textView">
                        <h4>간단한 공연홍보문구</h4>
                        <h2>공연제목</h2>
                        <p>공연기간</p>
                        <p>공연장소</p>
                        <p><a href="#">예매하기</a></p>
                        <p><a href="#">상세정보</a></p>
                    </div>
                </div>
                <div class="bg3">
                    <div class="textView">
                        <h4>간단한 공연홍보문구</h4>
                        <h2>공연제목</h2>
                        <p>공연기간</p>
                        <p>공연장소</p>
                        <p><a href="#">예매하기</a></p>
                        <p><a href="#">상세정보</a></p>
                    </div>
                </div>
                <div class="bg4">
                    <div class="textView">
                        <h4>간단한 공연홍보문구</h4>
                        <h2>공연제목</h2>
                        <p>공연기간</p>
                        <p>공연장소</p>
                        <p><a href="#">예매하기</a></p>
                        <p><a href="#">상세정보</a></p>
                    </div>
                </div>
                <div class="bg5">
                    <div class="textView">
                        <h4>간단한 공연홍보문구</h4>
                        <h2>공연제목</h2>
                        <p>공연기간</p>
                        <p>공연장소</p>
                        <p><a href="#">예매하기</a></p>
                        <p><a href="#">상세정보</a></p>

                    </div>
                </div>
            </div>
        </section>

        <main id="main">
            <section class="icons">
                <div class="icons__wrap section__wrap">
                    <ul class="cf">
                        <li><a href="#"><i class="fas fa-ticket-alt fa-3x"></i>예매안내</a></li>
                        <li><a href="#"><i class="fas fa-route fa-3x"></i>오시는길</a></li>
                        <li><a href="#"><i class="fas fa-parking fa-3x"></i>주차안내</a></li>
                        <li><a href="#"><i class="far fa-question-circle fa-3x"></i>자주하는 질문</a></li>
                        <li><a href="#"><i class="far fa-comment-dots fa-3x"></i>1대1 문의</a></li>
                        <li><a href="#"><i class="fas fa-theater-masks fa-3x"></i>극장예절</a></li>
                        <li><a href="#"><i class="fas fa-binoculars fa-3x"></i>오페라글래스 대여</a></li>
                    </ul>
                </div>
            </section>
            <section class="showInfo">
                <div class="showInfo__wrap section__wrap">
                    <h2 class="showInfo__tit">공연·전시 정보</h2>
                    <p>문화와 예술이 숨쉬는 행복한 문화공간 충무아트센터에서 진행되는 다양한 공연·전시</p>
                    <div class="showInfo__slide">
                        <div class="slide__btns btns">
                            <a href="#" class="btns__leftBtn"><i class="fas fa-chevron-left fa-3x"></i></a>
                            <a href="#" class="btns__rightBtn"><i class="fas fa-chevron-right fa-3x"></i></a>
                        </div>
                        <div class="slide__show">
                            <ul class="show__showList cf">
                                <li class="showList__cont">
                                    <div class="cont__wrap">
                                        <div class="wrap__inner">
                                            <h3>공연이름</h3>
                                            <p>충무아트센터 대극장 <br> 7/18(토) 19시, 평일 20시, 주말 14시(7/20(월) ~ 7/22(수) 공연 없음 )</p>
                                            <a href="#">예매하기</a>
                                            <a href="#">상세정보</a>
                                        </div>
                                    </div>
                                </li>
                                <li class="showList__cont">
                                    <div class="cont__wrap">
                                        <div class="wrap__inner">
                                            <h3>공연이름</h3>
                                            <p>충무아트센터 대극장 <br> 7/18(토) 19시, 평일 20시, 주말 14시(7/20(월) ~ 7/22(수) 공연 없음 )</p>
                                            <a href="#">예매하기</a>
                                            <a href="#">상세정보</a>
                                        </div>
                                    </div>
                                </li>
                                <li class="showList__cont">
                                    <div class="cont__wrap">
                                        <div class="wrap__inner">
                                            <h3>공연이름</h3>
                                            <p>충무아트센터 대극장 <br> 7/18(토) 19시, 평일 20시, 주말 14시(7/20(월) ~ 7/22(수) 공연 없음 )</p>
                                            <a href="#">예매하기</a>
                                            <a href="#">상세정보</a>
                                        </div>
                                    </div>
                                </li>
                                <li class="showList__cont">
                                    <div class="cont__wrap">
                                        <div class="wrap__inner">
                                            <h3>공연이름</h3>
                                            <p>충무아트센터 대극장 <br> 7/18(토) 19시, 평일 20시, 주말 14시(7/20(월) ~ 7/22(수) 공연 없음 )</p>
                                            <a href="#">예매하기</a>
                                            <a href="#">상세정보</a>
                                        </div>
                                    </div>
                                </li>
                                <li class="showList__cont">
                                    <div class="cont__wrap">
                                        <div class="wrap__inner">
                                            <h3>공연이름</h3>
                                            <p>충무아트센터 대극장 <br> 7/18(토) 19시, 평일 20시, 주말 14시(7/20(월) ~ 7/22(수) 공연 없음 )</p>
                                            <a href="#">예매하기</a>
                                            <a href="#">상세정보</a>
                                        </div>
                                    </div>
                                </li>
                                <li class="showList__cont">
                                    <div class="cont__wrap">
                                        <div class="wrap__inner">
                                            <h3>공연이름</h3>
                                            <p>충무아트센터 대극장 <br> 7/18(토) 19시, 평일 20시, 주말 14시(7/20(월) ~ 7/22(수) 공연 없음 )</p>
                                            <a href="#">예매하기</a>
                                            <a href="#">상세정보</a>
                                        </div>
                                    </div>
                                </li>
                                <li class="showList__cont">
                                    <div class="cont__wrap">
                                        <div class="wrap__inner">
                                            <h3>공연이름</h3>
                                            <p>충무아트센터 대극장 <br> 7/18(토) 19시, 평일 20시, 주말 14시(7/20(월) ~ 7/22(수) 공연 없음 )</p>
                                            <a href="#">예매하기</a>
                                            <a href="#">상세정보</a>
                                        </div>
                                    </div>
                                </li>
                                <li class="showList__cont">
                                    <div class="cont__wrap">
                                        <div class="wrap__inner">
                                            <h3>공연이름</h3>
                                            <p>충무아트센터 대극장 <br> 7/18(토) 19시, 평일 20시, 주말 14시(7/20(월) ~ 7/22(수) 공연 없음 )</p>
                                            <a href="#">예매하기</a>
                                            <a href="#">상세정보</a>
                                        </div>
                                    </div>
                                </li>
                                <li class="showList__cont">
                                    <div class="cont__wrap">
                                        <div class="wrap__inner">
                                            <h3>공연이름</h3>
                                            <p>충무아트센터 대극장 <br> 7/18(토) 19시, 평일 20시, 주말 14시(7/20(월) ~ 7/22(수) 공연 없음 )</p>
                                            <a href="#">예매하기</a>
                                            <a href="#">상세정보</a>
                                        </div>
                                    </div>
                                </li>
                                <li class="showList__cont">
                                    <div class="cont__wrap">
                                        <div class="wrap__inner">
                                            <h3>공연이름</h3>
                                            <p>충무아트센터 대극장 <br> 7/18(토) 19시, 평일 20시, 주말 14시(7/20(월) ~ 7/22(수) 공연 없음 )</p>
                                            <a href="#">예매하기</a>
                                            <a href="#">상세정보</a>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </section>
            <section class="news cf">
                <div class="news__wrap section__wrap">
                    <article class="news__notice cf">
                        <div class="text">
                            <span>Notice</span>
                            <h2>최신소식</h2>
                            <p>충무아트센터의 최신소식을 알려드립니다.</p>
                            <a href="#" class="notice__more"><i class="fas fa-plus fa-2x"></i></a>
                        </div>
                        <div class="cont">
                            <table>
                                <tr>
                                    <td>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio laudantium repellendus, hic ea. Eveniet, ipsa dolores nemo fugiat, architecto ratione esse magni ab exercitationem deserunt laborum? Natus praesentium, cupiditate blanditiis.</td>
                                    <td>2020-02-12</td>
                                </tr>
                                <tr>
                                    <td>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio laudantium repellendus, hic ea. Eveniet, ipsa dolores nemo fugiat, architecto ratione esse magni ab exercitationem deserunt laborum? Natus praesentium, cupiditate blanditiis.</td>
                                    <td>2020-02-12</td>
                                </tr>
                                <tr>
                                    <td>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio laudantium repellendus, hic ea. Eveniet, ipsa dolores nemo fugiat, architecto ratione esse magni ab exercitationem deserunt laborum? Natus praesentium, cupiditate blanditiis.</td>
                                    <td>2020-02-12</td>
                                </tr>
                                <tr>
                                    <td>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio laudantium repellendus, hic ea. Eveniet, ipsa dolores nemo fugiat, architecto ratione esse magni ab exercitationem deserunt laborum? Natus praesentium, cupiditate blanditiis.</td>
                                    <td>2020-02-12</td>
                                </tr>
                                <tr>
                                    <td>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio laudantium repellendus, hic ea. Eveniet, ipsa dolores nemo fugiat, architecto ratione esse magni ab exercitationem deserunt laborum? Natus praesentium, cupiditate blanditiis.</td>
                                    <td>2020-02-12</td>
                                </tr>
                            </table>
                        </div>
                    </article>
                    <article class="news__event cf">
                        <div class="text">
                            <span>Event</span>
                            <h2>이벤트</h2>
                            <p>충무아트센터에서 진행되는 이벤트를 알려드립니다.</p>
                            <div class="event__btns">
                                <a href="#" class="left"><i class="fas fa-chevron-left fa-2x"></i></a>
                                <a href="#" class="right"><i class="fas fa-chevron-right fa-2x"></i></a>
                            </div>
                        </div>
                        <div class="cont">
                            <ul class="cf">
                                <li><a href="#"><img src="<%=request.getContextPath() %>/img/b1.jpg" alt="이벤트1"></a></li>
                                <li><a href="#"><img src="<%=request.getContextPath() %>/img/b1.jpg" alt="이벤트2"></a></li>
                                <li><a href="#"><img src="<%=request.getContextPath() %>/img/b1.jpg" alt="이벤트3"></a></li>
                                <li><a href="#"><img src="<%=request.getContextPath() %>/img/b1.jpg" alt="이벤트4"></a></li>
                            </ul>
                        </div>
                </div>
                </article>
            </section>
            <a href="#" class="topBtn">TOP</a>
        </main>
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
    <script src="<%=request.getContextPath() %>/js/visual.js"></script>
</body>

</html>

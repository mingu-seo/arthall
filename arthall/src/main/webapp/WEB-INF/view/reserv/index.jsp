<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0">
    <title>충무아트센터</title>
    <link rel="icon" sizes="16x16" type="image.png" href="<%=request.getContextPath() %>/img/favicon.png">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.13.0/css/all.css" integrity="sha384-Bfad6CLCknfcloXFOyFnlgtENryhrpZCe29RTifKEixXQZ38WheV+i/6YWSzkz3V" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
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
            
                <div class="mobile">
                   <a href="javascript:;" class="mobile__openBtn"><i class="fas fa-bars fa-3x"></i></a>
                   <a href="javascript:;" class="mobile__closeBtn"><i class="fas fa-times fa-3x"></i></a>
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
                                        <li><a href="perf_info.html">공연정보</a></li>
                                        <li><a href="exhi_info.html">전시정보</a></li>
                                        <li><a href="event_info.html">행사정보</a></li>
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
                                        <li><a href="rentalGuidance.html">대관절차</a></li>
                                        <li><a href="rentalApply.html">대관신청</a></li>
                                    </ul>
                                </li>
                                <li class="hover">
                                    <a href="faq.html"><span>고객센터</span></a>
                                    <ul>
                                        <li><a href="faq.html">자주하는 질문</a></li>
                                        <li><a href="inquiry.html">1:1 문의</a></li>
                                        <li><a href="etiquette.html">관람예절</a></li>
                                        <li><a href="benefits.html">회원혜택</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </nav>
                    </div>
                    <form class="search" action="action_page.php">
                        <input type="search" name="search" class="t_box" placeholder="검색어를 입력해주세요">
                        <button type="submit" class="submit"><i class="fa fa-search"></i></button>
                    </form>
                </div>
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
                        <span>돌아온 창작뮤지컬의 전설!</span>
                        <h2>뮤지컬 프랑켄슈타인</h2>
                        <p>공연기간 : <span>2020.07.10~2020.08.13</span><br>공연장소 : <span>충무아트센터 대극장</span></p>
                        <p class="cf"><a href="reservForm.do" class="ticketingBtn">예매하기</a><a href="#">상세정보</a></p>
                    </div>
                </div>
                <div class="bg2">
                    <div class="textView">
                        <span>4연에 빛나는 웰메이드 창작뮤지컬</span>
                        <h2>뮤지컬 팬레터</h2>
                        <p>공연기간 : <span>2020.07.05~2020.08.31</span><br>공연장소 : <span>충무아트센터 중극장 블랙</span></p>
                        <p class="cf"><a href="reservForm.do" class="ticketingBtn">예매하기</a><a href="#">상세정보</a></p>
                    </div>
                </div>
                <div class="bg3">
                   <div class="textView">
                        <span>마음을 울리는 감성뮤지컬</span>
                        <h2>뮤지컬 스토리오브마이라이프</h2>
                        <p>공연기간 : <span>2020.09.01~2020.10.25</span><br>공연장소 : <span>충무아트센터 중극장 블랙</span></p>
                        <p class="cf"><a href="javascript:;" class="ticketingBtn">예매하기</a><a href="#">상세정보</a></p>
                    </div>
                </div>
                <div class="bg4">
                    <div class="textView">
                        <span>낭만의 르네상스가 만들어낸 골때리는 역작</span>
                        <h2>뮤지컬 썸씽로튼</h2>
                        <p>공연기간 : <span>2020.08.14~2020.10.01</span><br>공연장소 : <span>충무아트센터 대극장</span></p>
                        <p class="cf"><a href="javascript:;" class="ticketingBtn">예매하기</a><a href="#">상세정보</a></p>
                    </div>
                </div>
                <div class="bg5">
                    <div class="textView">
                        <span>드라마 발레의 정수</span>
                        <h2>발레 오네긴</h2>
                        <p>공연기간 : <span>2020.10.02~2020.11.01</span><br>공연장소 : <span>충무아트센터 대극장</span></p>
                        <p class="cf"><a href="javascript:;" class="ticketingBtn">예매하기</a><a href="#">상세정보</a></p>
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
                        <li><a href="faq.html"><i class="far fa-question-circle fa-3x"></i>자주하는 질문</a></li>
                        <li><a href="inquiry.html"><i class="far fa-comment-dots fa-3x"></i>1대1 문의</a></li>
                        <li><a href="etiquette.html"><i class="fas fa-theater-masks fa-3x"></i>극장예절</a></li>
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
                            <a href="javascript:;" class="btns__leftBtn"><i class="fas fa-chevron-left fa-3x"></i></a>
                            <a href="javascript:;" class="btns__rightBtn"><i class="fas fa-chevron-right fa-3x"></i></a>
                        </div>
                        <div class="slide__show">
                            <ul class="show__showList cf">
                                <li class="showList__cont slide1">
                                    <div class="cont__wrap">
                                        <div class="wrap__inner">
                                            <h3>뮤지컬 팬레터</h3>
                                            <p>충무아트센터 중극장 블랙 <br>2020.07.05~2020.08.31<br>매주 월요일 공연 없음</p>
                                            <a href="javascript:;" class="ticketingBtn">예매하기</a>
                                            <a href="#">상세정보</a>
                                        </div>
                                    </div>
                                </li>
                                <li class="showList__cont slide2">
                                    <div class="cont__wrap">
                                        <div class="wrap__inner">
                                            <h3>전시 마음을 안다</h3>
                                            <p>충무아트센터 갤러리 <br>2020.06.01~2020.06.31</p>
                                            <a href="javascript:;" class="ticketingBtn">예매하기</a>
                                            <a href="#">상세정보</a>
                                        </div>
                                    </div>
                                </li>
                                <li class="showList__cont slide3">
                                    <div class="cont__wrap">
                                        <div class="wrap__inner">
                                            <h3>발레 오네긴</h3>
                                            <p>충무아트센터 대극장 <br>2020.10.02~2020.11.01<br>매주 월요일 공연 없음 </p>
                                            <a href="javascript:;" class="ticketingBtn">예매하기</a>
                                            <a href="#">상세정보</a>
                                        </div>
                                    </div>
                                </li>
                                <li class="showList__cont slide4">
                                    <div class="cont__wrap">
                                        <div class="wrap__inner">
                                            <h3>뮤지컬 시데레우스</h3>
                                            <p>충무아트센터 중극장 블랙 <br>2020.11.01~2020.11.31<br>매주 월요일 공연 없음</p>
                                            <a href="javascript:;" class="ticketingBtn">예매하기</a>
                                            <a href="#">상세정보</a>
                                        </div>
                                    </div>
                                </li>
                                <li class="showList__cont slide5">
                                    <div class="cont__wrap">
                                        <div class="wrap__inner">
                                            <h3>뮤지컬 썸씽로튼</h3>
                                            <p>충무아트센터 대극장 <br>2020.08.14~2020.10.01<br>매주 월요일 공연 없음</p>
                                            <a href="javascript:;" class="ticketingBtn">예매하기</a>
                                            <a href="#">상세정보</a>
                                        </div>
                                    </div>
                                </li>
                                <li class="showList__cont slide6">
                                    <div class="cont__wrap">
                                        <div class="wrap__inner">
                                            <h3>전시 암흑물질</h3>
                                            <p>충무아트센터 갤러리 <br>2020.08.01~2020.08.31</p>
                                            <a href="javascript:;" class="ticketingBtn">예매하기</a>
                                            <a href="#">상세정보</a>
                                        </div>
                                    </div>
                                </li>
                                <li class="showList__cont slide7">
                                    <div class="cont__wrap">
                                        <div class="wrap__inner">
                                            <h3>발레 지젤</h3>
                                            <p>충무아트센터 대극장 <br>2020.12.01~2020.12.10</p>
                                            <a href="javascript:;" class="ticketingBtn">예매하기</a>
                                            <a href="#">상세정보</a>
                                        </div>
                                    </div>
                                </li>
                                <li class="showList__cont slide8">
                                    <div class="cont__wrap">
                                        <div class="wrap__inner">
                                            <h3>뮤지컬 프랑켄슈타인</h3>
                                            <p>충무아트센터 대극장 <br>2020.07.10~2020.08.13<br>매주 월요일 공연 없음</p>
                                            <a href="javascript:;" class="ticketingBtn">예매하기</a>
                                            <a href="#">상세정보</a>
                                        </div>
                                    </div>
                                </li>
                                <li class="showList__cont slide9">
                                    <div class="cont__wrap">
                                        <div class="wrap__inner">
                                            <h3>뮤지컬<br>브라더스까라마조프</h3>
                                            <p>충무아트센터 중극장 블랙 <br>2020.09.01~2020.09.31<br>매주 월요일 공연 없음</p>
                                            <a href="javascript:;" class="ticketingBtn">예매하기</a>
                                            <a href="#">상세정보</a>
                                        </div>
                                    </div>
                                </li>
                                <li class="showList__cont slide10">
                                    <div class="cont__wrap">
                                        <div class="wrap__inner">
                                            <h3>뮤지컬 제이미</h3>
                                            <p>충무아트센터 대극장 <br>2020.12.12~2020.12.31<br>매주 월요일 공연 없음</p>
                                            <a href="javascript:;" class="ticketingBtn">예매하기</a>
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
                            <p>충무아트센터의 <br> 최신소식을 알려드립니다.</p>
                            <a href="#" class="notice__more"><i class="fas fa-plus fa-2x"></i></a>
                        </div>
                        <div class="cont">
                            <table class="notice">
                                <tr>
                                    <td><a href="#" class="notice__tit">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio laudantium repellendus, hic ea. Eveniet, ipsa dolores nemo fugiat, architecto ratione esse magni ab exercitationem deserunt laborum? Natus praesentium, cupiditate blanditiis.</a></td>
                                    <td>2020-02-12</td>
                                </tr>
                                <tr>
                                    <td><a href="#" class="notice__tit">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio laudantium repellendus, hic ea. Eveniet, ipsa dolores nemo fugiat, architecto ratione esse magni ab exercitationem deserunt laborum? Natus praesentium, cupiditate blanditiis.</a></td>
                                    <td>2020-02-12</td>
                                </tr>
                                <tr>
                                    <td><a href="#" class="notice__tit">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio laudantium repellendus, hic ea. Eveniet, ipsa dolores nemo fugiat, architecto ratione esse magni ab exercitationem deserunt laborum? Natus praesentium, cupiditate blanditiis.</a></td>
                                    <td>2020-02-12</td>
                                </tr>
                                <tr>
                                    <td><a href="#" class="notice__tit">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio laudantium repellendus, hic ea. Eveniet, ipsa dolores nemo fugiat, architecto ratione esse magni ab exercitationem deserunt laborum? Natus praesentium, cupiditate blanditiis.</a></td>
                                    <td>2020-02-12</td>
                                </tr>
                                <tr>
                                    <td><a href="#" class="notice__tit">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio laudantium repellendus, hic ea. Eveniet, ipsa dolores nemo fugiat, architecto ratione esse magni ab exercitationem deserunt laborum? Natus praesentium, cupiditate blanditiis.</a></td>
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
                                <a href="javascript:;" class="left"><i class="fas fa-chevron-left fa-2x"></i></a>
                                <a href="javascript:;" class="right"><i class="fas fa-chevron-right fa-2x"></i></a>
                            </div>
                        </div>
                        <div class="cont">
                            <ul class="cf">
                                <li><a href="#"><img src="<%=request.getContextPath() %>/img/event/event-1.jpg" alt="이벤트1"></a></li>
                                <li><a href="#"><img src="<%=request.getContextPath() %>/img/event/event-2.jpg" alt="이벤트2"></a></li>
                                <li><a href="#"><img src="<%=request.getContextPath() %>/img/event/event-3.jpg" alt="이벤트3"></a></li>
                                <li><a href="#"><img src="<%=request.getContextPath() %>/img/event/event-4.jpg" alt="이벤트4"></a></li>
                            </ul>
                        </div>
                    </article>
                </div>
            </section>
            <a href="javascript:;" class="topBtn">TOP</a>
        </main>
        <footer>
            <div class="footerinner">
                <div class="footerinner__top cf">
                    <h2><a href="index.html"><img src="<%=request.getContextPath() %>/img/logo.png" alt="로고"></a></h2>
                    <div class="top__links">
                        <div class="links__sns cf">
                            <a href="https://ko-kr.facebook.com/chungmuartscenter/" target="_blank"><i class="fab fa-facebook-f fa-2x"></i></a>
                            <a href="https://twitter.com/chungmuholic" target="_blank"><i class="fab fa-twitter fa-2x"></i></a>
                            <a href="https://www.instagram.com/chungmu2016/" target="_blank"><i class="fab fa-instagram fa-2x"></i></a>
                            <a href="https://blog.naver.com/cmah_arthall" target="_blank"><i class="xi-naver xi-2x"></i></a>
                            <a href="https://www.youtube.com/channel/UC4UWAAwSsT4O3hcLjFL8kXQ" target="_blank"><i class="fab fa-youtube fa-2x"></i></a>
                        </div>
                        <ul class="links__list cf">
                            <li><a href="#">이용약관</a></li>
                            <li><a href="#">행정정보공개</a></li>
                            <li><a href="#">이메일수집거부</a></li>
                            <li><a href="#">개인정보취급방침</a></li>
                            <li><a href="#">사이트맵</a></li>
                            <li>
                                <select name="siteBox" id="siteBox">
                                    <option value="">관련사이트 바로가기</option>
                                    <option value="http://www.beautifulmindcharity.org/">뷰티풀마인드</option>
                                    <option value="http://www.chimff.com/2019/">충무로 뮤지컬 영화제</option>
                                    <option value="https://www.e-junggulib.or.kr/SJGL/">서울중구 통합 전자도서관</option>
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
                        <p>Copyrights all rights reserved &copy; Chungmu Arts Center and The Joeun IT Academy 2020 Team</p>
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
    <script src="<%=request.getContextPath() %>/js/topBtn.js"></script>
    <script src="<%=request.getContextPath() %>/js/siteOpen.js"></script>
    <script src="<%=request.getContextPath() %>/js/sec_slide.js"></script>
    <script src="<%=request.getContextPath() %>/js/ticketingPopup.js"></script>
</body>
</html>
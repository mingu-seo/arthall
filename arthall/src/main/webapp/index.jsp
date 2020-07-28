<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@ include file="/WEB-INF/view/include/headHtml.jsp" %>

</head>
<body>
<div id = "wrap">
	<!-- canvas -->
	<div id="canvas">
		<!-- S T A R T :: headerArea-->
		<header>
			<%@ include file="/WEB-INF/view/include/top.jsp" %>
		</header>
		<!-- E N D :: headerArea--> 
		<!-- S T A R T :: section area-->
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
		<!-- E N D :: section area-->
		<!-- S T A R T :: main area -->
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
                                <li><a href="#"><img src="img/b1.jpg" alt="이벤트1"></a></li>
                                <li><a href="#"><img src="img/b1.jpg" alt="이벤트2"></a></li>
                                <li><a href="#"><img src="img/b1.jpg" alt="이벤트3"></a></li>
                                <li><a href="#"><img src="img/b1.jpg" alt="이벤트4"></a></li>
                            </ul>
                        </div>
                </div>
                </article>
            </section>
            <a href="#" class="topBtn">TOP</a>
        </main>
		
		<!-- E N D :: main area -->
		
	</div>
	<!-- S T A R T :: footer area  -->
	<footer>
		<%@ include file="/WEB-INF/view/include/footer.jsp" %>
	
	</footer>
	
	<!-- E N D :: footer area  -->
</div>
</body>
</html>
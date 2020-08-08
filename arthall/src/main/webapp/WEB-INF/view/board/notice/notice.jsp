<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0">
    <title>충무아트센터 | 뉴스&middot;이슈</title>
    <link rel="icon" sizes="16x16" type="image.png" href="<%=request.getContextPath()%>/img/favicon.png">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.13.0/css/all.css" integrity="sha384-Bfad6CLCknfcloXFOyFnlgtENryhrpZCe29RTifKEixXQZ38WheV+i/6YWSzkz3V" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/news.css">
    <script src="<%=request.getContextPath()%>/js/forEachPolyfill.js" defer></script>
    <script src="<%=request.getContextPath()%>/js/header.js" defer></script>
    <script src="<%=request.getContextPath()%>/js/topBtn.js" defer></script>
    <script src="<%=request.getContextPath()%>/js/footerSiteOpen.js" defer></script>
    <script src="<%=request.getContextPath()%>/js/pagenation.js" defer></script>
    <script src="<%=request.getContextPath()%>/js/jquery-1.11.3.min.js" defer></script>
    <script src="<%=request.getContextPath()%>/js/notice.js" defer></script>
</head>

<body>
    <div id="wrap">
        <a href="#main" id="gomain">본문바로가기</a>
        <header>
            <div class="header-inner cf">
                <h1><a href="<%=request.getContextPath()%>/"><span class="hidden">logo</span><img src="<%=request.getContextPath()%>/img/logo.png" alt="logo"></a>
                </h1>

                <div class="mobile">
                    <a href="javascript:;" class="mobile__openBtn"><i class="far fa-newspaper"></i></a>
                    <div class="right_nav">
                        <ul class="tnb cf">
                            <li><a href="<%=request.getContextPath()%>/member/loginForm.do">로그인</a></li>
                            <li><a href="<%=request.getContextPath()%>/member/joinForm.do">회원가입</a></li>
                          <!--   <li><a href="./mypage.html">마이페이지</a></li> -->
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
                                    <a href="calendar.html"><span>공연·전시·행사</span></a>
                                    <ul>
                                        <li><a href="calendar.html">캘린더</a></li>
                                        <li><a href="perf_info.html">공연정보</a></li>
                                        <li><a href="exhi_info.html">전시정보</a></li>
                                        <li><a href="event_info.html">행사정보</a></li>
                                    </ul>
                                </li>
                                <li class="hover">
                                    <a href="<%=request.getContextPath()%>/board/notice/index.do"><span>뉴스·소식</span></a>
                                    <ul>
                                        <li><a href="<%=request.getContextPath()%>/board/notice/index.do">공지사항</a></li>
                                        <li><a href="<%=request.getContextPath()%>/board/news/news.do">뉴스/이슈</a></li>
                                    </ul>
                                </li>
                                <li class="hover">
                                    <a href="rentalGuidance.html"><span>대관안내</span></a>
                                    <ul>
                                        <li><a href="rentalGuidance.html">대관절차</a></li>
                                        <li><a href="rentalPlace.html">대관시설</a></li>
                                        <li><a href="rentalApply.html">대관신청</a></li>
                                    </ul>
                                </li>
                                <li class="hover">
                                    <a href="<%=request.getContextPath()%>/board/faq/index.do"><span>고객센터</span></a>
                                    <ul>
                                  		<li><a href="<%=request.getContextPath()%>/board/faq/index.do">자주하는 질문</a></li>
                                        <li><a href="<%=request.getContextPath()%>/board/qna/index.do">1:1 문의</a></li>
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
                    <a href="javascript:;" class="mobile__closeBtn"><i class="fas fa-times fa-3x"></i></a>
                </div>
            </div>
        </header>

        <div class="sub__tit">
            <h2>뉴스&middot;이슈</h2>
        </div>
        <div class="sub__container cf">
            <aside class="container__subClass">
                <h3 class="subClass__tit"><i class="far fa-newspaper"></i><br>뉴스&middot;소식</h3>
                <nav class="subClass__list">
                    <ul>
                        <li><a href="<%=request.getContextPath()%>/board/notice/index.do">공지사항</a></li>
                        <li><a href="<%=request.getContextPath()%>/board/news/news.do">뉴스&middot;이슈</a></li>
                    </ul>
                </nav>
            </aside>
            <main id="main">
                <div class="main__content">
                    <section class="content__innerConts">
                        <h3 class="innerConts__tit">뉴스&middot;이슈</h3>
                        <p>충무아트센터 회원 가입하시면 충무아트센터 뉴스 &amp; 이슈를 메일로 받아보실 수 있습니다.</p>
                        <div class="innerConts__cont">
                            <div class="cont__noticeContainer">
                                <table class="noticeContainer__notice notice">
                                    <thead>
                                        <tr>
                                            <th class="numTit">번호</th>
                                            <th class="titTit">제목</th>
                                            <th class="dateTit">작성일</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <c:if test="${vo.totalCount == 0}">
									<tbody>
									<tr align="center" bgcolor="white">
								
										<td colspan="100%">게시글이 없습니다.</td>
									</tr>
									</tbody>
									</c:if>
                                    
                                    <c:if test="${vo.totalCount > 0}">
                                    <c:forEach var="notice" items="${list}">
                                        <tr>
                                            <td class="notice__num"><c:out value="${notice.no}"/></td>
                                            <td class="notice__tit">
                                            <a href="news_view.html">
                                            	<c:out value="${notice.title}"/>
                                            </a></td>
                                            <td class="notice__date">${notice.regDate}</td>
                                        </tr>
                                    </c:forEach>
                                    </c:if>
                          
                                     
                                    </tbody>
                                </table>
                                <!-- <a href="notice_submit.html" class="writeBtn"><i class="fas fa-edit"></i>문의하기</a> -->
                                <div class="pagenation">
                                	<c:if test="${vo.startPage > 5}">
                                    <a href="javascript:;" class="pageBtn doublePrevBtn"><i class="fas fa-angle-double-left"></i></a>
                                    <a href="javascript:;" class="pageBtn prevBtn"><i class="fas fa-angle-left"></i></a>
                               		</c:if>
                               		<c:forEach var="pNo" begin="${vo.startPage}"
									end="${vo.endPage}">
									<a href="index.do?page=${pNo}&stype=${vo.stype}&sval=${vo.sval}">${pNo}</a>
									</c:forEach>
                               		
                               		<c:if test="${vo.endPage < vo.totalPage}">
                                    <a href="javascript:;" class="pageBtn nextBtn"><i class="fas fa-angle-right"></i></a>
                                    <a href="javascript:;" class="pageBtn doubleNextBtn"><i class="fas fa-angle-double-right"></i></a>
                                	</c:if>
                                </div>
                                <form class="search_notice" action="index.do" method="post">
                                	<div>
                                
                                    <button type="submit" class="submit"><i class="fa fa-search"></i></button>
                                   <!--  <input type="text" name="search_nt" class="search_nt" placeholder="검색어를 입력해주세요"> -->
                                   <input type="text" name="sval" value="${vo.sval}" placeholder="검색어를 입력해주세요">
                                    </div>
                                </form>
                            </div>
                        </div>
                    </section>
                </div>
            </main>
            <a href="javascript:;" class="topBtn">TOP</a>
        </div>
        <footer>
            <div class="footerinner">
                <div class="footerinner__top cf">
                    <h2><a href="index.html"><img src="<%=request.getContextPath()%>/img/logo.png" alt="로고"></a></h2>
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
</body></html>

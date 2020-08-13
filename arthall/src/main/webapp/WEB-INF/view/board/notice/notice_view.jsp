<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html lang="UTF-8">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0">
    <title>충무아트센터 | 공지사항</title>
    <link rel="icon" sizes="16x16" type="image.png" href="<%=request.getContextPath()%>/img/favicon.png">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.13.0/css/all.css" integrity="sha384-Bfad6CLCknfcloXFOyFnlgtENryhrpZCe29RTifKEixXQZ38WheV+i/6YWSzkz3V" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/notice_view.css">
    <script src="<%=request.getContextPath()%>/js/forEachPolyfill.js" defer></script>
    <script src="<%=request.getContextPath()%>/js/header.js" defer></script>
    <script src="<%=request.getContextPath()%>/js/topBtn.js" defer></script>
    <script src="<%=request.getContextPath()%>/js/footerSiteOpen.js" defer></script>
</head>

<body>
    <div id="wrap">
        <a href="#main" id="gomain">본문바로가기</a>
        <header>
            <div class="header-inner cf">
                <h1><a href="<%=request.getContextPath()%>/"><span class="hidden">logo</span><img src="<%=request.getContextPath()%>/img/logo.png" alt="logo"></a>
                </h1>

                <div class="mobile">
                    <a href="javascript:;" class="mobile__openBtn"><i class="fas fa-bars fa-3x"></i></a>
                    <div class="right_nav">
                        <ul class="tnb cf">
                            <li><a href="<%=request.getContextPath()%>/member/login.do">로그인</a></li>
                            <li><a href="<%=request.getContextPath()%>/member/join.html">회원가입</a></li>
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
                                        <li><a href="<%=request.getContextPath()%>/board/news/index.do">뉴스/이슈</a></li>
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
                                        <li><a href="i<%=request.getContextPath()%>/board/qna/index.do">1:1 문의</a></li>
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
            <h2>공지사항</h2>
        </div>
        <div class="sub__container cf">
            <aside class="container__subClass">
                <h3 class="subClass__tit"><i class="far fa-newspaper"></i><br>공지사항</h3>
                <nav class="subClass__list">
                    <ul>
                        <li><a href="<%=request.getContextPath()%>/board/notice/index.do">공지사항</a></li>
                        <li><a href="<%=request.getContextPath()%>/board/news/index.do">뉴스&middot;이슈</a></li>
                         
                    </ul>
                </nav>
            </aside>
       
            <main id="main">
                 <div class="main__content">
                    <article class="content__cont">
                  
                        <h3 class="cont__tit">
                        <c:out value="${data.title}"/> 
                   		</h3>
                        <span class="cont__tit_date">
                                                     등록날짜 : <c:out value="${data.regDate}"/>
                        </span>
                   		<tbody>   
                      <tr>
										
						<th scope="row"></th>
						<td colspan="10">${data.content }</td>
	 					
					 </tr>
					
					 <tr>
						<c:if test="${data.filename != null}">
						<th scope="row"><label for="">이미지</label></th>
						<td><img src="/upload/board/notice/${data.filename}" width="200px"></td>
						</c:if>
					</tr>
			 													
					<tr>
						<c:if test="${data.filename != null}">	
						<th scope="row"><label for="">첨부파일</label></th>
						
						
						<td colspan="10">
						<div class="weidtFile">
							<p>
							<c:if test="${data.filename == null}">
							첨부파일 없음
							</c:if>
							<c:if test="${data.filename != null}">
							<a href="/include/file_down.jsp?path=upload/board/notice/&file_name=${data.filename}&file_name_org=${data.filename_org}"> 
							<target="_blank">${data.filename_org}</a><br />
							</c:if>
						</div>
						</td>
						</c:if>
							</tr>
					  	
					</tbody>
					
						
                        
                    </article>
					
                    <div class="paging_view">
                    	
                     	<c:if test="${data.no != null}" >
                     	
                        <a href="notice_view.do?no=${data.no-1}&page=${vo.page}" class="paging_view_prev">
                            <strong><i class="fas fa-caret-up"></i> 이전글 </strong><span></span>
                        </a>
                       
                        </c:if>
                       
                      	<c:if test="${data.no != null}" >
                        <a href="notice_view.do?no=${data.no+1}&page=${vo.page}" class="paging_view_next">
                            <strong><i class="fas fa-caret-down"></i> 다음글 </strong><span></span>
                        </a>
                      	</c:if>
                    </div>
                    <div class="paging_prev">
                        <a href="<%=request.getContextPath()%>/board/notice/index.do"><i class="fa fa-bars" aria-hidden="true"></i>목록으로</a>
                    </div>
                </div>
            </main>
            <a href="#" class="topBtn">TOP</a>
        </div>
        <footer>
            <div class="footerinner">
                <div class="footerinner__top cf">
                    <h2><a href="<%=request.getContextPath()%>/index.do"><img src="<%=request.getContextPath()%>/img/logo.png" alt="로고"></a></h2>
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
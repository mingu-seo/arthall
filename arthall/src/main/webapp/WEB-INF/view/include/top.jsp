<%@ page contentType="text/html; charset=utf-8" %>
<!DOCTYPE html>
<html lang="en">


 <div class="header-inner cf">
                <h1><a href="<%=request.getContextPath()%>/"><span class="hidden">logo</span><img src="<%=request.getContextPath()%>/img/logo.png" alt="logo"></a>
                </h1>
            
                <div class="mobile">
                   <a href="javascript:;" class="mobile__openBtn"><i class="fas fa-bars fa-3x"></i></a>
                   <a href="javascript:;" class="mobile__closeBtn"><i class="fas fa-times fa-3x"></i></a>
                    <div class="right_nav">
                        <ul class="tnb cf">
                            <li><a href="<%=request.getContextPath()%>/member/loginForm.do">로그인</a></li>
                            <li><a href="<%=request.getContextPath()%>/member/joinForm.do">회원가입</a></li>
                            <li><a href="<%=request.getContextPath()%>/member/mypage/index.do">마이페이지</a></li>
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
                                    <a href="<%=request.getContextPath()%>/board/news/notice.do"><span>뉴스·소식</span></a>
                                    <ul>
                                        <li><a href="<%=request.getContextPath()%>/board/notice/index.do">공지사항</a></li>
                                        <li><a href="<%=request.getContextPath()%>/board/news/index.do">뉴스/이슈</a></li>
                                    </ul>
                                </li>
                                <li class="hover">
                                    <a href="#"><span>대관안내</span></a>
                                    <ul>
                                        <li><a href="#">대관시설</a></li>
                                        <li><a href="<%=request.getContextPath()%>/rentalGuidance.html">대관절차</a></li>
                                        <li><a href="<%=request.getContextPath()%>/rentalApply.html">대관신청</a></li>
                                    </ul>
                                </li>
                                <li class="hover">
                                    <a href="<%=request.getContextPath()%>/board/faq/index.do"><span>고객센터</span></a>
                                    <ul>
                                        <li><a href="<%=request.getContextPath()%>/board/faq/index.do">자주하는 질문</a></li>
                                        <li><a href="<%=request.getContextPath()%>/board/qna/index.do">1:1 문의</a></li>
                                        <li><a href="<%=request.getContextPath()%>/etiquette.html">관람예절</a></li>
                                        <li><a href="<%=request.getContextPath()%>/benefits.html">회원혜택</a></li>
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
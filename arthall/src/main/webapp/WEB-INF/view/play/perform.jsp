<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="sub__tit">
            <h2>공연정보</h2>
        </div>
        <div class="sub__container cf">
            <aside class="container__subClass">
                <h3 class="subClass__tit"><i class="fas fa-guitar"></i><br>공연&middot;전시&middot;행사</h3>
                <nav class="subClass__list">
                    <ul>
                        <li><a href="./calendar.html">캘린더</a></li>
                        <li><a href="./perf_info.html">공연정보</a></li>
                        <li><a href="./exhi_info.html">전시정보</a></li>
                        <li><a href="./event_info.html">행사정보</a></li>
                    </ul>
                </nav>
            </aside>
            <main id="main">
                <div class="main__content">
                    <form class="result_search" action="action_page.php">
                        <input type="search" name="search" class="t_box" placeholder=" 공연명을 입력해주세요">
                        <button type="submit" class="submit"><i class="fa fa-search"></i></button>
                    </form>
                    <div class="perf_list">
                        <div class="order_list">
                            <a href="#">최신순</a>
                            <a href="#">인기순</a>
                        </div>
                        <div class="perf_list_count">
                            <span>총 <strong>0</strong>건</span>
                        </div>
                    </div>
                    <div class="perf_view">
                        <ul>
                            <li>
                                <div class="perf_view_wrap">
                                    <img src="img/sub-pos-6.jpg" alt="perf_01">
                                    <div class="perf_view_wrap_des">
                                        <h3>뮤지컬 &lt;썸씽로튼&gt;</h3>
                                        <h4>장소 :  충무아트센터 대극장</h4>
                                        <span>20.07.05~20.07.30</span>
                                        <span>뮤지컬</span>
                                    </div>
                                    <div class="perf_view_wrap_mh">
                                        <a href="javascript:;" class="ticketingBtn">예매하기</a>
                                        <a href="performance01.html">상세정보</a>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="perf_view_wrap">
                                    <img src="img/sub-pos-1.jpg" alt="perf_02">
                                    <div class="perf_view_wrap_des">
                                        <h3>시데레우스</h3>
                                        <h4>장소 : 는 어딜까</h4>
                                        <span>20.07.05~20.07.30</span>
                                        <span>뮤지컬</span>
                                    </div>
                                    <div class="perf_view_wrap_mh">
                                        <a href="javascript:;" class="ticketingBtn">예매하기</a>
                                        <a href="#">상세정보</a>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="perf_view_wrap">
                                    <img src="img/sub-pos-2.jpg" alt="perf_03">
                                    <div class="perf_view_wrap_des">
                                        <h3>마음을 안다</h3>
                                        <h4>장소 : 우리 집</h4>
                                        <span>20.07.05~20.07.30</span>
                                        <span>갤러리</span>
                                    </div>
                                    <div class="perf_view_wrap_mh">
                                        <a href="javascript:;" class="ticketingBtn">예매하기</a>
                                        <a href="#">상세정보</a>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="perf_view_wrap">
                                    <img src="img/sub-pos-3.jpg" alt="perf_04">
                                    <div class="perf_view_wrap_des">
                                        <h3>오네긴</h3>
                                        <h4>장소 : 앞 마당</h4>
                                        <span>20.07.05~20.07.30</span>
                                        <span>발레</span>
                                    </div>
                                    <div class="perf_view_wrap_mh">
                                        <a href="javascript:;" class="ticketingBtn">예매하기</a>
                                        <a href="#">상세정보</a>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="perf_view_wrap">
                                    <img src="img/sub-pos-4.jpg" alt="perf_05">
                                    <div class="perf_view_wrap_des">
                                        <h3>프랑켄슈타인</h3>
                                        <h4>장소 : 우주</h4>
                                        <span>20.07.05~20.07.30</span>
                                        <span>뮤지컬</span>
                                    </div>
                                    <div class="perf_view_wrap_mh">
                                        <a href="javascript:;" class="ticketingBtn">예매하기</a>
                                        <a href="#">상세정보</a>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="perf_view_wrap">
                                    <img src="img/sub-pos-7.jpg" alt="perf_06">
                                    <div class="perf_view_wrap_des">
                                        <h3>판레터</h3>
                                        <h4>장소 : 더조은 종각</h4>
                                        <span>20.07.05~20.07.30</span>
                                        <span>뮤지컬</span>
                                    </div>
                                    <div class="perf_view_wrap_mh">
                                        <a href="javascript:;" class="ticketingBtn">예매하기</a>
                                        <a href="#">상세정보</a>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="perf_view_wrap">
                                    <img src="img/sub-pos-8.jpg" alt="perf_07">
                                    <div class="perf_view_wrap_des">
                                        <h3>지젤</h3>
                                        <h4>장소 : 상상마당</h4>
                                        <span>20.07.05~20.07.30</span>
                                        <span>뮤지컬</span>
                                    </div>
                                    <div class="perf_view_wrap_mh">
                                        <a href="javascript:;" class="ticketingBtn">예매하기</a>
                                        <a href="#">상세정보</a>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="perf_view_wrap">
                                    <img src="img/sub-pos-9.jpg" alt="perf_08">
                                    <div class="perf_view_wrap_des">
                                        <h3>브라더스 까리마조프</h3>
                                        <h4>장소 : 모르겠다</h4>
                                        <span>20.07.05~20.07.30</span>
                                        <span>뮤지컬</span>
                                    </div>
                                    <div class="perf_view_wrap_mh">
                                        <a href="javascript:;" class="ticketingBtn">예매하기</a>
                                        <a href="#">상세정보</a>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="perf_view_wrap">
                                    <img src="img/b1.jpg" alt="perf_01">
                                    <div class="perf_view_wrap_des">
                                        <h3>공연이름9(최대 두줄)</h3>
                                        <h4>장소</h4>
                                        <span>20.07.05~20.07.30</span>
                                        <span>뮤지컬</span>
                                    </div>
                                    <div class="perf_view_wrap_mh">
                                        <a href="javascript:;" class="ticketingBtn">예매하기</a>
                                        <a href="#">상세정보</a>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="perf_view_wrap">
                                    <img src="img/b1.jpg" alt="perf_01">
                                    <div class="perf_view_wrap_des">
                                        <h3>공연이름10(최대 두줄)</h3>
                                        <h4>장소</h4>
                                        <span>20.07.05~20.07.30</span>
                                        <span>뮤지컬</span>
                                    </div>
                                    <div class="perf_view_wrap_mh">
                                        <a href="javascript:;" class="ticketingBtn">예매하기</a>
                                        <a href="#">상세정보</a>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="perf_view_wrap">
                                    <img src="img/b1.jpg" alt="perf_01">
                                    <div class="perf_view_wrap_des">
                                        <h3>공연이름11(최대 두줄)</h3>
                                        <h4>장소</h4>
                                        <span>20.07.05~20.07.30</span>
                                        <span>뮤지컬</span>
                                    </div>
                                    <div class="perf_view_wrap_mh">
                                        <a href="javascript:;" class="ticketingBtn">예매하기</a>
                                        <a href="#">상세정보</a>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="perf_view_wrap">
                                    <img src="img/b1.jpg" alt="perf_01">
                                    <div class="perf_view_wrap_des">
                                        <h3>공연이름12(최대 두줄)</h3>
                                        <h4>장소</h4>
                                        <span>20.07.05~20.07.30</span>
                                        <span>뮤지컬</span>
                                    </div>
                                    <div class="perf_view_wrap_mh">
                                        <a href="javascript:;" class="ticketingBtn">예매하기</a>
                                        <a href="#">상세정보</a>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="perf_view_wrap">
                                    <img src="img/b1.jpg" alt="perf_01">
                                    <div class="perf_view_wrap_des">
                                        <h3>공연이름13(최대 두줄)</h3>
                                        <h4>장소</h4>
                                        <span>20.07.05~20.07.30</span>
                                        <span>뮤지컬</span>
                                    </div>
                                    <div class="perf_view_wrap_mh">
                                        <a href="javascript:;" class="ticketingBtn">예매하기</a>
                                        <a href="#">상세정보</a>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="perf_view_wrap">
                                    <img src="img/b1.jpg" alt="perf_01">
                                    <div class="perf_view_wrap_des">
                                        <h3>공연이름14(최대 두줄)</h3>
                                        <h4>장소</h4>
                                        <span>20.07.05~20.07.30</span>
                                        <span>뮤지컬</span>
                                    </div>
                                    <div class="perf_view_wrap_mh">
                                        <a href="javascript:;" class="ticketingBtn">예매하기</a>
                                        <a href="#">상세정보</a>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="perf_view_wrap">
                                    <img src="img/b1.jpg" alt="perf_01">
                                    <div class="perf_view_wrap_des">
                                        <h3>공연이름15(최대 두줄)</h3>
                                        <h4>장소</h4>
                                        <span>20.07.05~20.07.30</span>
                                        <span>뮤지컬</span>
                                    </div>
                                    <div class="perf_view_wrap_mh">
                                        <a href="javascript:;" class="ticketingBtn">예매하기</a>
                                        <a href="#">상세정보</a>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="perf_view_wrap">
                                    <img src="img/b1.jpg" alt="perf_01">
                                    <div class="perf_view_wrap_des">
                                        <h3>공연이름16(최대 두줄)</h3>
                                        <h4>장소</h4>
                                        <span>20.07.05~20.07.30</span>
                                        <span>뮤지컬</span>
                                    </div>
                                    <div class="perf_view_wrap_mh">
                                        <a href="javascript:;" class="ticketingBtn">예매하기</a>
                                        <a href="#">상세정보</a>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="perf_view_wrap">
                                    <img src="img/b1.jpg" alt="perf_01">
                                    <div class="perf_view_wrap_des">
                                        <h3>공연이름17(최대 두줄)</h3>
                                        <h4>장소</h4>
                                        <span>20.07.05~20.07.30</span>
                                        <span>뮤지컬</span>
                                    </div>
                                    <div class="perf_view_wrap_mh">
                                        <a href="javascript:;" class="ticketingBtn">예매하기</a>
                                        <a href="#">상세정보</a>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="perf_view_wrap">
                                    <img src="img/b1.jpg" alt="perf_01">
                                    <div class="perf_view_wrap_des">
                                        <h3>공연이름18(최대 두줄)</h3>
                                        <h4>장소</h4>
                                        <span>20.07.05~20.07.30</span>
                                        <span>뮤지컬</span>
                                    </div>
                                    <div class="perf_view_wrap_mh">
                                        <a href="javascript:;" class="ticketingBtn">예매하기</a>
                                        <a href="#">상세정보</a>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="perf_view_wrap">
                                    <img src="img/b1.jpg" alt="perf_01">
                                    <div class="perf_view_wrap_des">
                                        <h3>공연이름19(최대 두줄)</h3>
                                        <h4>장소</h4>
                                        <span>20.07.05~20.07.30</span>
                                        <span>뮤지컬</span>
                                    </div>
                                    <div class="perf_view_wrap_mh">
                                        <a href="javascript:;" class="ticketingBtn">예매하기</a>
                                        <a href="#">상세정보</a>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="perf_view_wrap">
                                    <img src="img/b1.jpg" alt="perf_01">
                                    <div class="perf_view_wrap_des">
                                        <h3>공연이름20(최대 두줄)</h3>
                                        <h4>장소</h4>
                                        <span>20.07.05~20.07.30</span>
                                        <span>뮤지컬</span>
                                    </div>
                                    <div class="perf_view_wrap_mh">
                                        <a href="javascript:;" class="ticketingBtn">예매하기</a>
                                        <a href="#">상세정보</a>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="perf_view_wrap">
                                    <img src="img/b1.jpg" alt="perf_01">
                                    <div class="perf_view_wrap_des">
                                        <h3>공연이름21(최대 두줄)</h3>
                                        <h4>장소</h4>
                                        <span>20.07.05~20.07.30</span>
                                        <span>뮤지컬</span>
                                    </div>
                                    <div class="perf_view_wrap_mh">
                                        <a href="javascript:;" class="ticketingBtn">예매하기</a>
                                        <a href="#">상세정보</a>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="perf_view_wrap">
                                    <img src="img/b1.jpg" alt="perf_01">
                                    <div class="perf_view_wrap_des">
                                        <h3>공연이름22(최대 두줄)</h3>
                                        <h4>장소</h4>
                                        <span>20.07.05~20.07.30</span>
                                        <span>뮤지컬</span>
                                    </div>
                                    <div class="perf_view_wrap_mh">
                                        <a href="javascript:;" class="ticketingBtn">예매하기</a>
                                        <a href="#">상세정보</a>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <div class="pagination">
                        <a href="#" class="firstpage pbtn"><img src="img/btn_firstpage.png" alt="첫 페이지로 이동"></a>
                        <a href="#"><span class="pagenum currentpage">1</span></a>
                        <a href="#"><span class="pagenum">2</span></a>
                        <a href="#"><span class="pagenum">3</span></a>
                        <a href="#"><span class="pagenum">4</span></a>
                        <a href="#"><span class="pagenum">5</span></a>
                        <a href="#" class="lastpage pbtn"><img src="img/btn_lastpage.png" alt="마지막 페이지로 이동"></a>
                    </div>
                </div>
            </main>
            <a href="javascript:;" class="topBtn">TOP</a>
        </div>
</body>
</html>
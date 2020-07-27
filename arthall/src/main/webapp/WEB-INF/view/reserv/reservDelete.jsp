<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>충무아트센터 멤버페이지</title>
    <link rel="icon" sizes="16x16" type="image.png" href="img/favicon.png">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.13.0/css/all.css" integrity="sha384-Bfad6CLCknfcloXFOyFnlgtENryhrpZCe29RTifKEixXQZ38WheV+i/6YWSzkz3V" crossorigin="anonymous">
    <link rel="stylesheet" href="css/member.css">
    <script src="js/jquery-1.11.3.min.js"></script>
</head>

<body>
    <div id="wrap">
       <a href="#main" id="gomain">본문바로가기</a>
        <header>
            <div class="header-inner cf">
                <h1><a href="index.html"><span class="hidden">logo</span><img src="img/logo.png" alt="logo"></a>
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
                                <a href="#" ><span>충무아트센터 소개</span></a>
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
        
        <div class="sub__tit">
            <h2>충무아트센터 멤버페이지</h2>
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
                        <a href="#">대메뉴</a> > 
                        <a href="#">중메뉴</a> > 
                        <a href="#">소메뉴</a>
                    </p>
                </div>
                <div class="main__content">
                    <div class="content__innerConts">
                        <h3 class="innerConts__tit">충무아트센터 멤버페이지</h3>
                        <p>충무가족의 소중한 정보를 한 눈에 보고 수정할 수 있습니다. <br>
                        원하시는 메뉴를 선택해 편리하게 이용해보세요.</p>
                        <div class="innerConts__cont">
                            <ul class="cont__member cf">
                                <li class="member__modified">
                                    <div class="modified__tit memberTit">
                                        <h4>회원정보 수정</h4>
                                        <span>개인정보변경 및 회원탈퇴</span>
                                    </div>
                                    <div class="modified__container memberContainer">
                                        <ul class="cf">
                                            <li>
                                                <div class="memberListInner">
                                                    <h5>회원정보수정</h5>
                                                    <i class="far fa-edit fa-5x"></i>
                                                    <a href="#">정보변경</a>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="memberListInner">
                                                    <h5>회원탈퇴</h5>
                                                    <i class="far fa-trash-alt fa-5x"></i>
                                                    <a href="#">탈퇴신청</a>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </li>
                                <li class="member__ticket">
                                    <a href="admin/member/login.do" class="ticket__tit memberTit">
                                        <h4>나의 예매내역</h4>
                                        <span>예매한 티켓팅 정보 및 내역확인</span>
                                    </a>
                                </li>
                                <li class="member__benefits">
                                    <a href="#" class="benefits__tit memberTit">
                                        <h4>멤버십 혜택</h4>
                                        <span>충무가족에게 제공되는 혜택 확인</span>
                                    </a>
                                </li>
                                <li class="member__question">
                                    <div class="question__tit memberTit">
                                        <h4>나의 문의내역</h4>
                                        <span>대관 및 일대일 문의내역확인</span>
                                    </div>
                                    <div class="question__container memberContainer">
                                        <ul class="cf">
                                            <li>
                                                <div class="memberListInner">
                                                    <h5>대관</h5>
                                                    <i class="fas fa-luggage-cart fa-5x"></i>
                                                    <a href="#">문의하기</a>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="memberListInner">
                                                    <h5>1:1 문의 내역</h5>
                                                    <i class="far fa-comment-dots fa-5x"></i>
                                                    <a href="#">문의 내역 확인</a>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </main>
            <a href="#" class="topBtn">TOP</a>
        </div>
        <footer>
            <div class="footerinner">
                <div class="footerinner__top cf">
                    <h2><a href="#"><img src="img/logo.png" alt="로고"></a></h2>
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
    <script src="js/header.js"></script>
</body></html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>TheJoeun_Project</title>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.13.0/css/all.css" integrity="sha384-Bfad6CLCknfcloXFOyFnlgtENryhrpZCe29RTifKEixXQZ38WheV+i/6YWSzkz3V" crossorigin="anonymous">
	<link rel="stylesheet" href="css/join.css">
	<script src="js/join.js"></script>

</head>
<body>

	<div id="wrap">
		<a href="#" id="gomain">본문바로가기</a>
		<header>
			<div class="header-inner cf">
				<h1><a href="hollys_main_v2.html"><span class="hidden">logo</span><img src="img/logo.png" alt="logo"></a>
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
					<input type="search" name="search" class="t_box" placeholder=" 검색어 입력">
					<button type="submit" class="submit"><i class="fa fa-search"></i></button>
				</form>
			</div>
		</header>

		<div class="sub__tit">
			<h2>충무아트센터 회원가입</h2>
		</div>
		<div class="sub__container cf">
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
						<h3 class="innerConts__tit">충무아트센터</h3>
						<p>회원가입을 통해 충무아트센터의 멤버십혜택을 누려보세요.</p>
						<div class="innerConts__cont">
							<form class="join_form" method="post" action="" name="join_form">
								<fieldset>
									<legend></legend>
									<div class="form_list">
										<span class="star">*필수기입항목</span>
										<ul>
											<li>
												<label for="id"><span>*</span>아이디:</label> 
												<input type="text" name="id" id="id" placeholder="6자 이상의 영문과 숫자를 조합해 주세요" required="required">
												<button><span>중복확인</span></button>
											</li>
											<li>
												<label for="pw"><span>*</span>비밀번호:</label> 
												<input type="password" name="pw" id="pw" placeholder="8자 이상의 영문과 숫자를 조합해 주세요" required="required">
											</li>
											<li>
												<label for="pw2"><span>*</span>비밀번호확인:</label> 
												<input type="password" name="pw2" id="pw2" placeholder="비밀번호를 다시 한 번 입력해주세요" required="required">
											</li>
											<li>
												<label for="name"><span>*</span>이름:</label> 
												<input type="text" name="name" id="name" placeholder="이름을 입력해 주세요" required="required">
											</li>
											<li>
												<label for="sex"><span>*</span>성별:</label>
												<div class="sex">
													<input type="radio" name="sex" id="sex_man"><label for="sex_man">남성</label>
													<input type="radio" name="sex" id="sex_women"><label for="sex_three">여성</label>
													<input type="radio" name="sex" id="sex_three"><label for="sex_three">제 3의성</label>
													<input type="radio" name="sex" id="sex_none"><label for="sex_none">기재원치않음</label>
												</div>
											</li>
											<li>
												<label for="datepicker"><span>*</span>생년월일:</label> 
												<input type="text" class="datepicker" placeholder="년도 / 월 / 일을 입력해주세요 (ex: 19920510)">
												<!-- 다시 작업 필요 -->
											</li>
											<li>
												<label for="tel"><span>*</span>연락처:</label> 
												<input type="tel" name="tel" id="tel" placeholder="숫자만 입력해주세요" required="required">
											</li>
											<li>
												<label for="address"><span>*</span>주소:</label> 
												<input type="address" name="address" id="address" placeholder="" required="required">
												<button onclick="execDaumPostcode()"><span>우편번호 찾기</span></button>
											</li>
											<li>
												<label for="address2"><span>*</span>상세주소:</label> 
												<input type="address" name="address2" id="address2" placeholder="" required="required">
											</li>
											<li>
												<label for="email"><span>*</span>이메일:</label> 
												<div class="email_area">
													<input type="text" name="email1" id="email1" required="required">
													<span>@</span>
												</div>
												<div class="email_select">
													<select>
														<option value="">직접입력</option>
														<option value="">naver.com</option>
														<option value="">daum.net</option>
														<option value="">gmail.com</option>
													</select>
												</div>
												<button><span>인증번호 발송</span></button>
											</li>
											<li>
												<label for="email_conf"><span>*</span>이메일 인증 확인:</label> 
												<input type="text" name="email_conf" id="email_conf" placeholder="인증번호를 입력하신 후 확인을 눌러주세요" required="required">
												<button><span>인증번호 확인</span></button>
											</li>
											<li>
												<input type="checkbox" name="chk1" id="chk1">
												<label for="chk1">충무아트센터에서 제공하는 정보를 메일로 받아보시겠습니까? (선택)</label>
											</li>
											<li>
												<input type="checkbox" name="chk2" id="chk2">
												<label for="chk2">충무아트센터에서 제공하는 정보를 SMS로 받아보시겠습니까? (선택)</label>
											</li>
										</ul>
										<div class="btn_yn">
											<button><span>확인</span></button>
											<button><span>취소</span></button>
										</div>
									</div>
								</fieldset>
							</form>
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

			<script src="js/jquery-1.11.3.min.js"></script>
			<script src="js/header.js"></script>
		</body>
		</html>
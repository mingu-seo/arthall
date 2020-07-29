<%@ page contentType="text/html; charset=utf-8" %>
<!DOCTYPE html>
<html lang="en">

<div class="footerinner">
    <div class="footerinner__top cf">
        <h2><a href="#"><img src="<%=request.getContextPath()%>/img/logo.png" alt="로고"></a></h2>
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
<script src="<%=request.getContextPath()%>/js/header.js"></script>
<script src="<%=request.getContextPath()%>/js/visual.js"></script>

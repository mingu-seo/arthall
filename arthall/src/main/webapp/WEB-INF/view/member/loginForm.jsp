<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@ include file="/WEB-INF/view/include/headHtml.jsp" %>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/login.css">
</head>
<div id = "wrap">
	<a href="<%=request.getContextPath()%>/index.do" id="gomain">본문바로가기</a>
	<!-- S T A R T :: headerArea-->
	<header>
		<%@ include file="/WEB-INF/view/include/top.jsp" %>
	</header>
	<!-- E N D :: headerArea--> 
	<!-- S T A R T :: mainArea--> 
	  <div class="sub__tit">
            <h2>로그인 &#183; 회원가입</h2>
        </div>
        <div class="sub__container cf">
            <main id="main">
                <div class="main__content">
                    <section class="content__innerConts">
                        <h3 class="innerConts__tit">충무아트센터<br> 멤버십 로그인</h3>
                        <p>로그인으로 충무아트센터의 멤버십혜택을 이용하실 수 있습니다.</p>
                        <div class="innerConts__cont">
                            <div class="cont__login">
                                <form method="post" action="<%=request.getContextPath()%>/login.do" name="loginForm" id="loginForm">
                                    <fieldset>
                                        <legend>로그인</legend>
                                        <div class="form__loginInfo">
                                            <ul class="loginInfo__inputs">
                                                <li class="cf">
                                                    <label for="id">
                                                        <span class="hidden">이름</span>
                                                        <i class="fas fa-user"></i>
                                                    </label>
                                                    <input type="text" id="id" name="id" required placeholder="아이디 / ID">
                                                </li>
                                                <li class="cf">
                                                    <label for="password">
                                                        <span class="hidden">이메일</span>
                                                        <i class="fas fa-unlock"></i>
                                                    </label>
                                                    <input type="password" id="password" name="password" required placeholder="비밀번호 / PASSWORD">
                                                </li>
                                            </ul>
                                        </div>
                                        <p class="form__findBtns">
                                            <a href="<%=request.getContextPath()%>/member/findIDForm.do">아이디 찾기</a>
                                            /
                                            <a href="<%=request.getContextPath()%>/member/findPasswordForm.do">비밀번호 찾기</a>
                                        </p>
                                        <input type="submit" value="로그인" class="form__submit">
                                        <a href="<%=request.getContextPath()%>/member/joinForm.do" class="form__joinBtn">회원가입</a>
                                    </fieldset>
                                </form>
                            </div>
                        </div>
                    </section>
                </div>
            </main>
            <a href="javascript:;" class="topBtn">TOP</a>
        </div>
	 
	<!-- E N D :: mainArea--> 
		
	<!-- S T A R T :: footer area  -->
	<footer>
		<%@ include file="/WEB-INF/view/include/footer.jsp" %>
	
	</footer>
	
	<!-- E N D :: footer area  -->
</div>
</body>
</html>
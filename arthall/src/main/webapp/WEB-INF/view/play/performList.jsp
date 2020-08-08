<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<%@ include file="/WEB-INF/view/include/headHtml.jsp"%>

<title>충무아트센터 | 공연정보</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/perf-exhi_info.css">
<script>
	$(function(){
		for(i=0;i<${vo.totalCount};i++){
			var playType = $("#playType").html();
			console.log(playType);
			if (playType == 1){
				$("#playType").html("공연");
			}else if (playType == 2){
				$("#playType").html("전시");
			}
		}
	});
//2
// 	function playType(){
// 		var playType = document.getElementById("playType").innerHTML
// 		if (playType == 1){
// 			return "공연";
// 		}else if (playType == 2){
// 			return "전시";
// 		}
// 	}
</script>
<script src="<%=request.getContextPath()%>/js/forEachPolyfill.js" defer></script>
<script src="<%=request.getContextPath()%>/js/ticketingPopup.js" defer></script>
<script src="<%=request.getContextPath()%>/js/header.js" defer></script>
<script src="<%=request.getContextPath()%>/js/topBtn.js" defer></script>
<script src="<%=request.getContextPath()%>/js/footerSiteOpen.js" defer></script>
<script src="<%=request.getContextPath()%>/js/perf-exhi.js" defer></script>
</head>

<body>
	<div id="wrap">
		<header>
			<%@ include file="/WEB-INF/view/include/top.jsp" %>
		</header>
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
                        	<c:forEach var="play" items="${list}">
	                            <li>
	                                <div class="perf_view_wrap">
	                                    <img src="/img/sub-pos-6.jpg" alt="perf_01">
	                                    <div class="perf_view_wrap_des">
	                                    	<input type="hidden" value="${play.no}"/>
	                                        <h3>${play.playName}</h3>
	                                        <h4>장소 : ${play.hallNo}</h4>
	                                        <span>${play.startDate} ~ ${play.endDate}</span>
	                                        <span id="playType">
	                                        <c:choose>
	                                        <c:when test="${play.playType eq 1}">공연</c:when>
	                                        <c:when test="${play.playType eq 2}">전시</c:when>
	                                        <c:otherwise>${play.playType}</c:otherwise>
	                                        </c:choose>
	                                        </span>
	                                    </div>
	                                    <div class="perf_view_wrap_mh">
	                                        <a href="javascript:;" class="ticketingBtn">예매하기</a>
	                                        <a href="performance01.html">상세정보</a>
	                                    </div>
	                                </div>
	                            </li>
                            </c:forEach>
                        </ul>
                    </div>
                    <div class="pagination">
                        <a href="#" class="firstpage pbtn"><img src="/img/btn_firstpage.png" alt="첫 페이지로 이동"></a>
                        <a href="#"><span class="pagenum currentpage">1</span></a>
                        <a href="#"><span class="pagenum">2</span></a>
                        <a href="#"><span class="pagenum">3</span></a>
                        <a href="#"><span class="pagenum">4</span></a>
                        <a href="#"><span class="pagenum">5</span></a>
                        <a href="#" class="lastpage pbtn"><img src="/img/btn_lastpage.png" alt="마지막 페이지로 이동"></a>
                    </div>
                </div>
            </main>
            <a href="javascript:;" class="topBtn">TOP</a>
        </div>
	<footer>
		<%@ include file="/WEB-INF/view/include/footer.jsp"%>
	</footer>
</div>
</body>
</html>
<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@ include file="/WEB-INF/view/admin/include/headHtml.jsp" %>
</head>
<body> 
<div id="wrap">
	<!-- canvas -->
	<div id="canvas">
		<!-- S T A R T :: headerArea-->
		<%@ include file="/WEB-INF/view/admin/include/top.jsp" %>
		<!-- E N D :: headerArea--> 
		
		<!-- S T A R T :: containerArea-->
		<div id="container">
			<div id="content">
				<div class="con_tit">
					<h2>Ticket - [목록] 인데 인클루드 빼고 프레임 좀 바꾸고 시퍼여</h2>
				</div>
				<!-- //con_tit -->
				<div class="con">
					<!-- 내용 : s -->
					<div id="bbs">
						<div id="blist">
							<form name="frm" id="frm" action="index.do" method="post">
							<table width="100%" border="0" cellspacing="0" cellpadding="0" summary="관리자 관리목록입니다.">
								<colgroup>
									<col class="w15" />
									<col class="w25" />
									<col class="w25" />
									<col class="w15" />
									<col class="w20" />
								</colgroup>
								<thead>
									<tr>
										<th scope="col">티켓번호</th>
										<th scope="col">예약번호</th> 
										<th scope="col">좌석타입</th>
										<th scope="col">가격</th>
										<th scope="col">결제상태</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="ticket" items="${ticketlist}">
									<tr>
										<td class="title">${ticket.no}</td>
										<td>${ticket.reservNo}</td>	
										<td>${ticket.seatType}</td>
										<td>${ticket.price}</td>
										<td>${ticket.pay}</td>
									</tr>
									</c:forEach>
								</tbody>
							</table>
							</form>



							<!-- //search --> 
						</div>
						<!-- //blist -->
					</div>
					<!-- //bbs --> 
					<!-- 내용 : e -->
				</div>
				<!--//con -->
			</div>
			<!--//content -->
		</div>
		<!--//container --> 
		<!-- E N D :: containerArea-->
	</div>
	<!--//canvas -->
</div>
<!--//wrap -->

</body>
</html>
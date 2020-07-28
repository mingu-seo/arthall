<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@ include file="/WEB-INF/view/admin/include/headHtml.jsp"%>
</head>

<script type="text/javascript">
function allchk() {
	   if($("#allChk").is(':checked')) {
	      $("input[name=chk]").prop("checked", true);         
	   } else {
	      $("input[name=chk]").prop("checked", false);
	   }
	};
function mouseOver() {
	$('#frm').style.color = 'black'
};

function mouseOut() {
	$(this).style.color = "white";
};
	

function banSelect() {
	var v = $("#banSelect").val();
	if(v=="all"){
		alert("전체");
	}else if(v=="nomal"){
		alert("nomal");
	}else {
		alert("quie");
	}
}
</script>

<style style="text/css">

    table tr:hover:not(#thead){
          background-color: #eeeff0;
    }

</style>

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
					<h2>회원관리 - [목록]</h2>
				</div>
				<!-- //con_tit -->
				<div class="con">
					<!-- 내용 : s -->
					<div id="bbs">
						<div id="blist">
							<form name="frm2" id="frm2" action="index.do" method="post">
								<table border="2">
									<tr>
										<td class="" rowspan="2">회원검색</td>
										<td class="w22">아이디    <input type="text" id="memId" name="memID"></td>
										<td class="w22">이름    <input type="text" id="memName" name="memName"></td>
										<td class="w22">연락처    <input type="text" id="memName" name="memName"></td>
										<td class="w22">주소    <input type="text" id="memAddr" name="memAddr"></td>
									</tr>
									<tr>
										<td>생일    <input type="text" id="memBirth" name="memBirth"></td>
										<td>가입일    <input type="text" id="memJoin" name="memJoin"></td>
										<td>휴면 계정 여부
											<select id="banSelect" name="banSelect" onchange="banSelect()" style="width: 100px">
												<option value="all" selected="selected">전체</option>
												<option value="nomal">정상계정</option>
												<option value="quie">휴면계정</option>
											</select>
										</td>
										<td>이메일    <input type="text" id="memEmail" name="memEmail"></td>
									</tr>
								</table>
								<div class="btn">
									<div class="btnRight">
										<a class="btns" href="#" onclick="kk()"><strong>초화</strong></a>
										<a class="btns" href="#" onclick="gg()"><strong>적용</strong></a>
										<a class="btns" href="#" onclick="tt()"><strong>회원정지</strong></a>
									</div>
								</div>
							</form>
						    
							<p><span><strong>총 ${vo.totalCount}개</strong>  |  ${vo.page}/${vo.totalPage}페이지</span></p>

							<form name="frm" id="frm" action="banMem.do" method="post">
							<table width="100%" border="0" cellspacing="0" cellpadding="0" summary="관리자 관리목록입니다.">
								<colgroup>
									<col class="w5" />
									<col class="w5" />
									<col class="w5" />
									<col class="w5" />
									<col class="w5" />
									<col class="w5" />
									<col class="w5" />
									<col class="w5" />
									<col class="w5" />
									<col class="w5" />
									<col class="w5" />
									<col class="" />

								</colgroup>
								<thead>
									<tr>
										<th scope="col" class="first"><input type="checkbox" name="allChk" id="allChk" onclick="allchk();"/>
										<label for="allChk"></label></th>
										<th scope="col">번호</th>
										<th scope="col">아이디</th> 
										<th scope="col">패스워드</th> 
										<th scope="col">이름</th>
										<th scope="col">연락처</th>
										<th scope="col">이메일</th>
										<th scope="col">주소</th>
										<th scope="col">생년월일</th>
										<th scope="col">가입일</th>
										<th scope="col">마지막 방문</th>
										<th scope="col">계정상태</th>
									</tr>
								</thead>
								<tbody>
								
								<!-- =========================================================================================== -->
								<c:if test="${vo.totalCount == 0}">
								<tr>
									<td colspan="4">게시글이 없습니다.</td>
								</tr>
								</c:if>
								<c:if test="${vo.totalCount > 0}">
								<c:forEach var="member" items="${list}">
								<tr class = 'detail' 
								onmouseover="mouseOver();" onmouseout="mouseOut();" 
								onclick="location.href='detail.do?no=${member.no}&page=${vo.page }';" >
									<td class="first"><input type="checkbox" name="chk" id="chk" value="${member.no}"/></td>
									<td>${member.no }</td>
									<td>${member.id }</td>
									<td>${member.password }</td>
									<td>${member.name }</td>
									<td>${member.tel }</td>
									<td>${member.email }</td>
									<td>${member.addr }</td>
									<td>${member.birth }</td>
									<td>${member.joinDate }</td>
									<td>${member.lastVisit }</td>
									<td>${member.banMem }</td>
									
								</tr>	
								</c:forEach>

								</c:if>
								</tbody>
							</table>
							</form>
							<!--//btn-->
							<!-- 페이징 처리 -->
							<div class='page'>
								<tr>
									<td colspan="4">
										<c:if test="${vo.startPage > 5}">
										<a href="index.do?page=${vo.startPage-5}">[이전]</a>
										</c:if>
										<c:forEach var="pNo" begin="${vo.startPage}" end="${vo.endPage}">
										<a href="index.do?page=${pNo}">${pNo}</a>
										</c:forEach>
										<c:if test="${vo.endPage < vo.totalPage}">
										<a href="index.do?page=${vo.startPage+5}">[다음]</a>
										</c:if>
									</td>
								</tr> 
							</div>
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
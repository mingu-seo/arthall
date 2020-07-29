<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@ include file="/WEB-INF/view/admin/include/headHtml.jsp"%>
</head>

<script type="text/javascript">
//전체 체크
function allchk() {
	   if($("#allChk").is(':checked')) {
	      $("input[name=chk]").prop("checked", true);         
	   } else {
	      $("input[name=chk]").prop("checked", false);
	   }
	};
	
// 검색창
window.onload = function() {
	//리셋버튼
	document.getElementById('resetForm').onclick = function() {
		document.getElementById("stype").value = 'all';
		document.getElementById("banSelect").value = 'banAll';
		document.getElementById("sval").value = '';
		document.getElementById('searchForm').submit();
	}
	//검색카테고리 선택 후 검색어 없이 버튼 클릭 시 알림창 출력
	document.getElementById('search').onclick = function() {
		if(document.getElementById("stype").value != "all" &&
				(document.getElementById("sval").value == null ||
						document.getElementById("sval").value == "")){
			alert("검색어 입력해주세요.");
		} else {
			document.getElementById('searchForm').submit();
		}
	}
}	
	
//리스트 마우스 음영
function mouseOver() {
	$('#frm').get(0).style.color = "black";
};

function mouseOut() {
	$('#frm').get(0).style.color = "white";
};

function ban() {
   alert("계정 상태를 변경하시겠습니까?")
   if($(".banMem").val()=="정상"){
      $(".banMem").val("휴면");
   } else{
      $(".banMem").val("정상");
   }
};

</script>

<!-- 리스트 마우스 음영 스타일-->
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
							<form name="searchForm" id="searchForm" action="index.do" method="post" onsubmit="inputException()">
								<table>
									<tr>
										<td class="w30"  >회원검색</td>
										<td class="w30">휴면 계정 여부
											<select id="banSelect" name="banSelect" style="width: 100px">
												<option value="banAll" <c:if test="${vo.banSelect=='banAll'}">selected</c:if>>전체</option>
												<option value="정상" <c:if test="${vo.banSelect=='정상'}">selected</c:if>>정상계정</option>
												<option value="휴면" <c:if test="${vo.banSelect=='휴면'}">selected</c:if>>휴면계정</option>
											</select>
										</td>

										<td class="">
											<div class="search">
												<select  id="stype" name="stype" style="width: 100px">
													<option value="all" <c:if test="${vo.stype=='all'}">selected</c:if>>전체</option>
													<option value="id" <c:if test="${vo.stype=='id'}">selected</c:if>>아이디</option>
													<option value="name" <c:if test="${vo.stype=='name'}">selected</c:if>>이름</option>
													<option value="tel" <c:if test="${vo.stype=='tel'}">selected</c:if>>연락처</option>
													<option value="email" <c:if test="${vo.stype=='email'}">selected</c:if>>이메일</option>
													<option value="addr1" <c:if test="${vo.stype=='addr1'}">selected</c:if>>주소</option>
												</select>
												<input type="text" id="sval" name="sval" value="${vo.sval }">
											</div>
										</td>
									</tr>
								</table>
								<div class="btn">
									<div class="btnRight">
										<a class="btns" href="#" id="resetForm"><strong>초기화</strong></a>
										<a class="btns" href="#" id="search"><strong>검색</strong></a>
										
										<a class="btns" href="#" onclick="tt()"><strong>회원정지</strong></a>
									</div>
								</div>
							</form>
						    
							<p><span><strong>총 ${vo.totalCount}개</strong>  |  ${vo.page}/${vo.totalPage}페이지</span></p>

							<form name="frm" id="frm" action="banMem.do" method="post">
							<table width="100%" border="0" cellspacing="0" cellpadding="0" summary="관리자 관리목록입니다.">
								<colgroup>
									<col class="w5" />
									<col class="w12" />
									<col class="w12" />
									<col class="w12" />
									<col class="w12" />
									<col class="w12" />
									<col class="w17" />
									<col class="" />

								</colgroup>
								<thead>
									<tr>
										<th scope="col" class="first"><input type="checkbox" name="allChk" id="allChk" onclick="allchk();"/>
										<label for="allChk"></label></th>
										<th scope="col">번호</th>
										<th scope="col">아이디</th> 
										<th scope="col">이름</th>
										<th scope="col">성별</th>
										<th scope="col">계정상태</th>
										<th scope="col">가입일</th>
										<th scope="col">마지막 방문</th>
									</tr>
								</thead>
								<tbody>
								
								<!-- =========================================================================================== -->
								<c:if test="${vo.totalCount == 0}">
								<tr>
									<td colspan="15">회원 정보가 없습니다.</td>
								</tr>
								</c:if>
								<c:if test="${vo.totalCount > 0}">
								
								<c:forEach var="member" items="${list}">
								<tr class = 'detail' 
								onmouseover="mouseOver();" onmouseout="mouseOut();" 
								onclick="location.href='detail.do?no=${member.no}';" >
									<td class="first"><input type="checkbox" name="chk" id="chk" value="${member.no}"/></td>
									<td>${member.no }</td>
									<td>${member.id }</td>
									<td>${member.name }</td>
									<td>
										<c:if test="${member.gender=='1'}">남성</c:if>
										<c:if test="${member.gender=='2'}">여성</c:if>
										<c:if test="${member.gender=='3'}">제3의성</c:if>
										<c:if test="${member.gender=='4'}">기재원치않음</c:if>
									</td>
									<td>${member.banMem }</td>
									<td>${member.joinDate }</td>
									<td>${member.lastVisit }</td>		
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
										<a href="index.do?page=${pNo}&sval=${vo.sval}&stype=${vo.stype}&banSelect=${vo.banSelect}">${pNo}</a>
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
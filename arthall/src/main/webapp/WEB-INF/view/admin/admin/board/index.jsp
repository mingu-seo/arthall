<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/view/admin/include/headHtml.jsp"%>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script>

	$(function(){
		
		$("#allChk").change(function() {
			
			if (this.checked) {
	            $(".checkSingle").each(function() {
	                this.checked=true;
	            });
	        } else {
	            $(".checkSingle").each(function() {
	                this.checked=false;
	            });
	        }
	        
	    });
	});
	function del() {
	   if (confirm('정말로 삭제하시겠습니까?')) {
		   $("#frm").submit();
	   }
	   else{
		   return;
	   }
	}
	
</script>


</head>

<body>
	<div id="wrap">
		<!-- canvas -->
		<div id="canvas">
			<!-- S T A R T :: headerArea-->
			<%@ include file="/WEB-INF/view/admin/include/top.jsp"%>
			<!-- E N D :: headerArea-->

			<!-- S T A R T :: containerArea-->
			<div id="container">
				<div id="content">
					<div class="con_tit">
						<h2>자유게시판 - [목록]</h2>
					</div>
					<!-- //con_tit -->
					<div class="con">
						<!-- 내용 : s -->
						<div id="bbs">
							<div id="blist">
								<p>
									<span><strong>총 ${vo.totalCount} 개</strong> | ${vo.page }/${vo.totalPage}페이지</span>
								</p>
								<form name="frm" id="frm" action="delete.do" method="post">
									<table width="100%" border="0" cellspacing="0" cellpadding="0"
										summary="관리자 관리목록입니다.">
										<colgroup>
											<col class="w3" />
											
											<col class="" />
											<col class="w20" style= text-align: "center"/>
											<col class="w10" />
										</colgroup>
										<thead>
											<tr>
												<th scope="col" class="first"><input type="checkbox"
													name="allChk" id="allChk"/>
												 </th>
												
												<th scope="col">제목</th>
												<th scope="col">작성일</th>
												<th scope="col">작성자</th>
											</tr>
										</thead>

										<c:if test="${vo.totalCount == 0}">
											<tbody>
												<tr align="center" bgcolor="white">
													<td colspan="4">게시글이 없습니다.</td>
												</tr>
											</tbody>
										</c:if>
										<c:if test="${vo.totalCount > 0}">
											<c:forEach var="board" items="${list}">
												<tbody>
													<tr>
														<td class="first"><input type="checkbox" name="num"
															id="num" class="checkSingle" value="${board.no}"  /></td>
														
														<td class="title"><a
															href="view.do?no=${board.no}&page=${vo.page}"> 
															<b>
															<c:forEach var="index" begin="1" end="${board.depth_no}"> 
																&nbsp;&nbsp; 
															</c:forEach>
															<c:if test="${board.order_no != 0}">
																<c:out value="└"/>
															</c:if>
															<c:out	value="${board.title}  " />
															<c:if test="${board.cmtNum != 0}">
																<c:out value="[${board.cmtNum}]"/>
															</c:if>
															</b>
														</a></td>
														<td>${board.moddate }</td>
														<td>${board.writer }</td>
													</tr>
												</tbody>

											</c:forEach>
										</c:if>


									</table>
								</form>
								<div class="btn">
									<div class="btnLeft">
										<a class="btns" href="#" onclick="del();"><strong>삭제</strong> </a>
									</div>
									<div class="btnRight">
										<a class="wbtn" href="writeForm.do"><strong>등록</strong> </a>
									</div>
								</div>
								<!--//btn-->
								<!-- 페이징 처리 -->
								<div class='page'>
									<c:if test="${vo.startPage > 5}">
										<a href="list.do?page=${vo.startPage - 5}">[이전]</a>
									</c:if>
									<c:forEach var="pNo" begin="${vo.startPage}"
										end="${vo.endPage}">
										<a href="list.do?page=${pNo}">${pNo}</a>
									</c:forEach>
									<c:if test="${vo.endPage < vo.totalPage}">
										<a href="list.do?page=${vo.startPage+5}">[다음]</a>
									</c:if>

								</div>

								<!-- //페이징 처리 -->
								<form name="searchForm" id="searchForm" action="list.do" method="post">
									<div class="search">
										<select name="stype" title="검색을 선택해주세요">
											<option value="all" <c:if test="${vo.stype=='all'}">selected</c:if>>전체</option>
											<option value="title" <c:if test="${vo.stype=='title'}">selected</c:if>>제목</option>
											<option value="content" <c:if test="${vo.stype=='content'}">selected</c:if>>내용</option>
										</select> 
										
										<input type="text" name="sval" value="${vo.sval }"	title="검색할 내용을 입력해주세요" /> 
										<input type="image"	src="<%=request.getContextPath()%>/img/admin/btn_search.gif"
											class="sbtn" alt="검색" />
									</div>
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
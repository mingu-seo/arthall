<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@ include file="/WEB-INF/view/admin/include/headHtml.jsp" %>
<script>
function del() {
	if (confirm('정말로 삭제하시겠습니까?')) {
		location.href="delete.do";
	}
}

function move() {
	location.href="reservForm.do"
}

$(document).ready(function(){
    $("#allChk").click(function(){
        if($("#allChk").prop("checked")){
            $("input[name=no]").prop("checked",true);
        }else{
            $("input[name=no]").prop("checked",false);
        }
    })
})

$(function() {
	$("#search").change(function() {
		if ($(this).val() == "reservDate") {
			$("#searchword1").show();
			$("#searchword0").hide();
			
		} else {
			$("#searchword0").show();
			$("#searchword1").hide();
			
		}
	});
});

</script>
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
               <h2>공지사항 - 예약관리</h2>
            </div>
            <!-- //con_tit -->
            <div class="con">
               <!-- 내용 : s -->
               <div id="bbs">
                  <div id="blist">
                     <p><span><strong>총 ${vo.totalCount}개</strong>  |  ${vo.page}/${vo.endPage}페이지</span></p>
                     <form name="frm" id="frm" action="delete.do" method="post">
                     <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="관리자 관리목록입니다.">
                        <colgroup>
                           <col class="" />
                           <col class="w16" />
                           <col class="w10" />
                           <col class="w12" />
                           <col class="w16" />
                           <col class="w20" />
                           <col class="w12" />
                           <col class="w7" />
                           <col class="w7" />
                        </colgroup>
                        <thead>
                           <tr>
                              <th scope="col" class="first"><input type="checkbox" name="allChk" id="allChk" onClick="check(this, document.frm.no)" /></th>
                              <th scope="col">예약번호</th>
                              <th scope="col">예약자명</th> 
                              <th scope="col">예약일자</th> 
                              <th scope="col">공연번호</th> 
                              <th scope="col">공연명</th>
                              <th scope="col">공연일자</th> 
                              <th scope="col">공연시간</th>
                              <th scope="col" class="last">공연홀</th>
                           </tr>
                        </thead>
                        <tbody>
                           <c:if test="${vo.totalCount == 0}">
                              <tr>
                                 <td colspan="100%">게시글이 없습니다.</td>
                              </tr>
                           </c:if>
                           <c:if test="${vo.totalCount > 0}">
                              <c:forEach var="reserv" items="${list}">
                              <tr>
                                 <td class="first"><input type="checkbox" name="no" id="no" value="${reserv.no}"/></td>
                                 <!-- 티켓리스트 페이지로 이동 -->
                                 <td class="title"><a href="ticketlist.do?reservNo=${reserv.no}">${reserv.no}</a></td>
                                 <td>${reserv.name}</td>   
                                 <td>${reserv.reservDay}</td>
                                 <td>${reserv.playNo}</td>
                                 <td>${reserv.playName}</td>
                                 <td>${reserv.playDay}</td>
                                 <td>${reserv.runtime}</td>
                                 <td class="last">${reserv.hallNo}</td>
                              </tr>
                              </c:forEach>                             
                           </c:if>
                        </tbody>
                     </table>
                     </form>
                     <div class="btn">
                        <div class="btnLeft">
                           <a class="btns" href="javascript:$('#frm').submit();" onclick="del();"><strong>삭제</strong> </a>
                        </div>
                     </div>
                     <!--//btn-->
                     <!-- 페이징 처리 -->
                     <div class='page'>
                        <c:if test="${vo.startPage > 5}">
							<a href="list.do?page=${vo.startPage-5}">[이전]</a>
						</c:if>
						<c:forEach var="pNo" begin="${vo.startPage}" end="${vo.endPage}">
							<a href="list.do?page=${pNo}">[${pNo}]</a>
						</c:forEach>
						<c:if test="${vo.endPage < vo.totalPage}">
							<a href="list.do?page=${vo.startPage+5}">[다음]</a>
						</c:if>
                     </div>
                     <!-- //페이징 처리 -->
                     <form name="searchForm" id="searchForm" action="list.do"  method="post">
                        <div class="search">
                           <select name="stype" id="search"title="검색을 선택해주세요">
                              <option value="name" <c:if test="${vo.stype=='name'}">selected</c:if>>예약자명</option>
                              <option value="playName" <c:if test="${vo.stype=='playName'}">selected</c:if>>공연명</option>
                              <option value="playDay" <c:if test="${vo.stype=='playDay'}">selected</c:if>>공연일자</option>
                              <option value="hallNo" <c:if test="${vo.stype=='hallNo'}">selected</c:if>>공연홀</option>
                              <option value="reservDate" >예매기간</option>
                           </select>
                           <span id="searchword0" >
	                           <input type="text" name="sval" value="${vo.sval}" title="검색할 내용을 입력해주세요"/>	
	                       </span>
                           	<span id="searchword1" style="display:none;">
								<input type="date" id="startDate"name="startDate" class="w10" title="시작일을 입력해주세요" 
								value = ""/>
								~
								<input type="date" id="endDate"name="endDate" class="w10" title="종료일을 입력해주세요" 
								value = ""/>
							</span>
							<input type="image" src="<%=request.getContextPath()%>/img/admin/btn_search.gif" class="sbtn" alt="검색"/>
                        </div>
                     </form>
                     <input type="submit" value="예약 페이지 이동" onclick="move();">
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
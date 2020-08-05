<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@ include file="/WEB-INF/view/admin/include/headHtml.jsp" %>
<script>
function del() {
   if (confirm('정말로 삭제하시겠습니까?')) {
      location.href='deleteP.do';
   }
}
	$(document).ready(function(){
    $("#allChk").click(function(){
        if($("#allChk").prop("checked")){
            $("input[name=no]").prop("checked",true);
        }else{
            $("input[name=no]").prop("checked",false);
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
               <h2>전시관리 - [회차정보]</h2>
            </div>
            <!-- //con_tit -->
            <div class="con">
               <!-- 내용 : s -->
               <div id="bbs">
                  <div id="blist">									
                     <p><span><strong>총 "${vo.totalCount}"개</strong>  |  ${vo.page}/${vo.totalPage}페이지</span></p>
                     <form name="frm" id="frm" action="deleteE.do" method="post">
                     <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="관리자 관리목록입니다.">
                        <colgroup>
                           <col class="w3" />
                           <col class="w10" />
                           <col class="w5" />
                           <col class="w6" />
                           <col class="w3" />
                           <col class="w10" />
                           <col class="w5" />
                           <col class="w5" />
                           <col class="w5" />
                           <col class="w7" />
                        </colgroup>
                        <thead>
                           <tr>
                              <th scope="col" class="first" rowspan="2"><input type="checkbox" name="allChk" id="allChk" onClick="check(this, document.frm.no)"/></th>
                              <th scope="col" rowspan="2">제목</th>
                              <th scope="col" rowspan="2">전시번호</th>
                              <th scope="col" rowspan="2">전시일</th>
                              <th scope="col" rowspan="2">회차</th>
                              <th scope="col" rowspan="2">작가</th>
                              <th scope="col" colspan="3">가격</th>
                                                       
                              <th scope="col" class="last" rowspan="2">첨부파일</th>
                           </tr>
                           <tr>
                           		<!-- 필요에 따라 추가 필요 -->
                           	  <th scope="col">성인</th> 
	                          <th scope="col">청소년</th>
	                          <th scope="col">어린이</th>
                           </tr>
                        </thead>
                        <tbody>
                           <c:if test="${vo.totalCount == 0}">
                              <tr>
                                 <td colspan="14">게시글이 없습니다.</td>
                              </tr>
                           </c:if>
                           <c:if test="${vo.totalCount > 0}">
                              <c:forEach var="exhibit" items="${list}">
                              <tr>
                                 <td class="first"><input type="checkbox" name="no" id="no" value="${exhibit.no}"/></td>
                                 <td class="title" style="text-align:center" onclick="location.href='exhibitModifyForm.do?no=${exhibit.no}'">${exhibit.exName}</td>
                                 <td onclick="location.href='exhibitModifyForm.do?no=${exhibit.no}'">${exhibit.exNo}</td>
                                 <td onclick="location.href='exhibitModifyForm.do?no=${exhibit.no}'">${exhibit.exDate}</td>
                                 <td onclick="location.href='exhibitModifyForm.do?no=${exhibit.no}'">${exhibit.time}</td>
                                 <td onclick="location.href='exhibitModifyForm.do?no=${exhibit.no}'">${exhibit.author}</td>
                                 <td onclick="location.href='exhibitModifyForm.do?no=${exhibit.no}'">${exhibit.priceA}</td>
                                 <td onclick="location.href='exhibitModifyForm.do?no=${exhibit.no}'">${exhibit.priceB}</td>
                                 <td onclick="location.href='exhibitModifyForm.do?no=${exhibit.no}'">${exhibit.priceC}</td>
                                 <td class="last"><a class="fileview" href="fileView.do?filename=${exhibit.filename}"><strong>${exhibit.filename}</strong></a></td>
                              </tr>
                              <tr>
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
                        <div class="btnRight">
                           <a class="wbtn" href="exhibitWriteForm.do"><strong>등록</strong> </a>
                        </div>
                     </div>
                     <!--//btn-->
                     <!-- 페이징 처리 -->
                     <div class='page'>
                        <c:if test="${vo.startPage > 5}">
                     <a href="exhibit.do?page=${vo.startPage-5}">[이전]</a>
                  </c:if>
                  <c:forEach var="pNo" begin="${vo.startPage}" end="${vo.endPage}">
                     <a href="exhibit.do?page=${pNo}">[${pNo}]</a>
<!--                      &stype=${vo.stype}&sval=${vo.sval} -->
                  </c:forEach>
                  <c:if test="${vo.endPage < vo.totalPage}">
                     <a href="exhibit.do?page=${vo.startPage+5}">[다음]</a>
                  </c:if>
                     </div>
                     <!-- //페이징 처리 -->
                     <form name="searchForm" id="searchForm" action="exhibit.do"  method="post">
                        <div class="search">
                           <select name="stype" title="검색을 선택해주세요">
                           	  <option value="all" <c:if test="${vo.stype == 'all'}">selected</c:if>>전체</option>
                           	  <option value="exName" <c:if test="${vo.stype == 'exName'}">selected</c:if>>전시명</option>
                              <option value="author" <c:if test="${vo.stype=='author'}">selected</c:if>>작가</option>
                           </select>
                           <input type="text" name="sval" value="${vo.sval}" title="검색할 내용을 입력해주세요" />
                           <input type="image" src="<%=request.getContextPath()%>/img/admin/btn_search.gif" class="sbtn" alt="검색" />
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
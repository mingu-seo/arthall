<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@ include file="/WEB-INF/view/admin/include/headHtml.jsp" %>
<script>
function del() {
   if (confirm('정말로 삭제하시겠습니까?')) {
      location.href='delete.do';
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
function modify(){
	
}
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
               <h2>공연/전시 관리 - [작품정보]</h2>
            </div>
            <!-- //con_tit -->
            <div class="con">
               <!-- 내용 : s -->
               <div id="bbs">
                  <div id="blist">									<!-- 페이지계산 수정 필요 -->
                     <p><span><strong>총 "${vo.totalCount}"개</strong>  |  1/12페이지</span></p>
                     <form name="frm" id="frm" action="delete.do" method="post">
                     <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="관리자 관리목록입니다.">
                        <colgroup>
                           <col class="w3" />
                           <col class="w5" />
                           <col class="w4" />
                           <col class="w5" />
                           <col class="w8" />
                           <col class="w8" />
                           <col class="w7" />
                           <col class="w20" />
                           <col class="w7" />
                           <col class="w7" />
                           <col class="w7" />
                           <col class="w7" />
                           <col class="w7" />
                           <col class="w7" />
                           <col class="w7" />
                        </colgroup>
                        <thead>
                           <tr>
                              <th scope="col" class="first" rowspan="2"><input type="checkbox" name="allChk" id="allChk" onClick="check(this, document.frm.no)"/></th>
                              <th scope="col" rowspan="2">공연번호</th>
                              <th scope="col" rowspan="2">홀번호</th>
                              <th scope="col" rowspan="2">공연/전시</th>
                              <th scope="col" rowspan="2">제목</th>
                              <th scope="col" colspan="2">기간</th>
                              <th scope="col" rowspan="2">출연진/작가</th>                               
                              <th scope="col" rowspan="2">내용</th> 
                              <th scope="col" rowspan="2">등급</th> 
                              <th scope="col" rowspan="2">러닝타임(분)</th>
                              <th scope="col" rowspan="2">문의</th>
                              <th scope="col" rowspan="2">제작/주최</th>
                              <th scope="col" class="last" rowspan="2">첨부파일</th>
                           </tr>
                           <tr>
                           	  <th scope="col">시작일</th> 
	                          <th scope="col">종료일</th>
                           </tr>
                        </thead>
                        <tbody>
                           <c:if test="${vo.totalCount == 0}">
                              <tr>
                                 <td colspan="14">게시글이 없습니다.</td>
                              </tr>
                           </c:if>
                           <c:if test="${vo.totalCount > 0}">
                              <c:forEach var="play" items="${list}">
                              <tr id="tr" onclick="location.href='modifyForm.do?no=${play.no}'">
                                 <td class="first"><input type="checkbox" name="no" id="no" value="${play.no}"/></td>
                                 <td class="title">${play.no}</td>
                                 <td>${play.hallNo}</td>
                                 <td>${play.playType}</td>
                                 <td>${play.playName}</td>
                                 <td>${play.startDate}</td>
                                 <td>${play.endDate}</td>
                                 <td>${play.starring}</td>
                                 <td>${play.content}</td>
                                 <td>${play.rating}</td>
                                 <td>${play.runningTime}</td>
                                 <td>${play.inquiry}</td>
                                 <td>${play.producer}</td>
                                 <td class="last"><a class="fileview" href="fileView.do?filename=${play.filename}"><strong>${play.filename}</strong></a></td>
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
                           <a class="wbtn" href="writeForm.do"><strong>등록</strong> </a>
                        </div>
                        <div class="btnRight">
                           <a class="wbtn" href="modifyForm.do?no=${vo.no}"><strong>수정</strong> </a>
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
<!--                      &stype=${vo.stype}&sval=${vo.sval} -->
                  </c:forEach>
                  <c:if test="${vo.endPage < vo.totalPage}">
                     <a href="list.do?page=${vo.startPage+5}">[다음]</a>
                  </c:if>
                     </div>
                     <!-- //페이징 처리 -->
                     <form name="searchForm" id="searchForm" action="list.do"  method="post">
                        <div class="search">
                           <select name="stype" title="검색을 선택해주세요">
                           	  <option value="all" <c:if test="${vo.stype == 'all'}">selected</c:if>>전체</option>
                           	  <option value="playName" <c:if test="${vo.stype == 'playName'}">selected</c:if>>공연명</option>
                              <option value="actor" <c:if test="${vo.stype=='actor'}">selected</c:if>>배우</option>
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
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
               <h2>공지사항 - [목록]</h2>
            </div>
            <!-- //con_tit -->
            <div class="con">
               <!-- 내용 : s -->
               <div id="bbs">
                  <div id="blist">
                     <p><span><strong>총 "${vo.totalCount}"개</strong>  |  1/12페이지</span></p>
                     <form name="frm" id="frm" action="index.do" method="post">
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
                              <th scope="col" class="first"><input type="checkbox" name="allChk" id="allChk" onClick="check(this, document.frm.no)"/></th>
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
                                 <td colspan="4">게시글이 없습니다.</td>
                              </tr>
                           </c:if>
                           <c:if test="${vo.totalCount > 0}">
                              <c:forEach var="reserv" items="${list}">
                              <tr>
                                 <td class="first"><input type="checkbox" name="no" id="no" value=""/></td>
                                 <td class="title"><a href="view.do">${reserv.no}</a></td>
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
                           <a class="btns" href="#" onclick=""><strong>삭제</strong> </a>
                        </div>
                        <div class="btnRight">
                           <a class="wbtn" href="write.do"><strong>등록</strong> </a>
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
                     <form name="searchForm" id="searchForm" action="index.do"  method="post">
                        <div class="search">
                           <select name="stype" title="검색을 선택해주세요">
                              <option value="all">전체</option>
                              <option value="title">제목</option>
                              <option value="contents">내용</option>
                           </select>
                           <input type="text" name="sval" value="" title="검색할 내용을 입력해주세요" />
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
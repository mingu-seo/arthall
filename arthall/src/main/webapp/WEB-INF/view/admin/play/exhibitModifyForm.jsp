<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
					<h2>전시관리 - [일정 수정]</h2>
				</div>
				<!-- //con_tit -->
				<div class="con">
					<!-- 내용 : s -->
					<div id="bbs">
						<div id="bread">
							<form method="post" name="frm" id="frm" action="modifyE.do" enctype="multipart/form-data">
							<table width="100%" border="0" cellspacing="0" cellpadding="0" summary="관리자 관리 기본내용입니다.">
								<colgroup>
									<col class="w1" />
									<col class="w3" />
									<col class="w2" />
									<col class="w2" />
								</colgroup>
								<tbody>
									<input type="hidden" id="no" name="no" value='${vo.no}'/>
									<tr>
										<th scope="row" colspan="2"><label for="">* 제목</label></th>
										<td colspan="10">
											<input type="text" id="playName" name="playName" class="w20" title="제목을 입력해주세요" value='${vo.playName}'/>	
										</td>
									</tr>
									<tr>
										<th scope="row" colspan="2"><label for="">* 공연번호</label></th>
										<td colspan="10">
											<input type="text" id="playNo" name="playNo" class="w20" title="제목을 입력해주세요" value='${vo.playNo}'/>	
										</td>
									</tr>
									<tr>
										<th scope="row" colspan="2"><label for="">* 작가</label></th>
										<td colspan="10">
											<input type="text" id="artist" name="artist" class="w100" value='${vo.artist}' />
										</td>
									</tr>
									<tr>
										<th scope="row" rowspan="3"><label for="">*가격</label></th>
			                            <th scope="col">성인<br></th> 
										<td colspan="2">
											<input type="text" id="priceAdult" name="priceAdult" class="w5" value='${vo.priceAdult}'/>	
										</td>
									</tr>
			                        <tr>
				                        <th scope="col">청소년<br></th>
				                        <td colspan="2">
											<input type="text" id="priceTeenager" name="priceTeenager" class="w5" value='${vo.priceTeenager}' />	
										</td>
			                        </tr>									
			                        <tr>
				                        <th scope="col">어린이<br></th>
				                        <td colspan="2">
											<input type="text" id="priceChildren" name="priceChildren" class="w5" value='${vo.priceChildren}' />	
										</td>
			                        </tr>									
									<tr>
										<th scope="row" colspan="2"><label for="">첨부파일</label></th>
										<td colspan="10">
											<c:if test="${!empty vo.filename}">
												<td><img src='/upload/play/${vo.filename}'/></td>
											</c:if>
											<input type="file" id="filename_tmp" name="filename_tmp" class="w100" title="첨부파일을 업로드 해주세요." value='${vo.filename}'/>	
										</td>
									</tr>
								</tbody>
							</table>
							<input type="hidden" name="cmd" value="write" />
							
							<div class="btn">
								<div class="btnLeft">
									<a class="btns" href="exhibit.do"><strong>목록</strong></a>
								</div>
								<div class="btnRight">
									<a class="btns" style="cursor:pointer;" href="javascript:$('#frm').submit();"><strong>저장</strong></a>
								</div>
							</div>
							</form>
							<!--//btn-->
						</div>
						<!-- //bread -->
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
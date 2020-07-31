<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@ include file="/WEB-INF/view/admin/include/headHtml.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/WEB-INF/view/include/comment.jsp"%>
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
						<h2>QnA - [읽기]</h2>
					</div>
					<!-- //con_tit -->
					<div class="con">
						<!-- 내용 : s -->
						<div id="bbs">
							<div id="bread">
								<table width="100%" border="0" cellspacing="0" cellpadding="0"
									summary="관리자 관리 기본내용입니다.">
									<colgroup>
										<col width="10%" />
										<col width="15%" />
										<col width="10%" />
										<col width="15%" />
										<col width="25%" />
										<col width="25%" />
									</colgroup>
									<tbody>
										<tr>
											<th scope="row"><label for="">제목</label></th>
											<td colspan="10">${data.title }</td>
										</tr>
										<tr>
											<th scope="row"><label for="">내용</label></th>
											<td colspan="10">${data.content }</td>
										</tr>
										<tr>

											<th scope="row"><label for="">첨부파일</label></th>



											<td colspan="10">
												<div class="weidtFile">
													<p>
														<c:if test="${data.filename == null}">
															첨부파일 없음
														</c:if>
														<c:if test="${data.filename != null}">
														
															<a href="/include/file_down.jsp?path=upload/board/qna/&file_name=${data.filename}&file_name_org=${data.filename_org}"
															target="_blank"> ${data.filename_org } </a><br />
														</c:if>
														
													</p>
												</div>
											</td>
										</tr>
									</tbody>
								</table>
								<div class="cbox" id="cbox">
								</div>
								<div class="btn">
									<div class="btnLeft">
										<a class="btns" href="index.do"><strong>목록</strong></a>
									</div>
									<div class="btnRight">
										<a class="btns" style="cursor: pointer;" href="answerForm.do?no=${data.no}"><strong>답변달기</strong></a>
										<a class="btns" style="cursor: pointer;" href="modifyForm.do?no=${data.no}"><strong>수정</strong></a>
										<!-- <a class="btns" style="cursor: pointer;" href=""><strong>답변</strong></a> -->
									</div>
								</div>
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
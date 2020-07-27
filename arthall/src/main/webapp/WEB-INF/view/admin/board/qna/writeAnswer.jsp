<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@ include file="/WEB-INF/view/admin/include/headHtml.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script>
$(function() {
	var oEditors = [];
	nhn.husky.EZCreator.createInIFrame({
		oAppRef: oEditors,
		elPlaceHolder: "contents", // textarea ID
		sSkinURI: "<%=request.getContextPath()%>/smarteditor/SmartEditor2Skin.html",
					htParams : {
						bUseToolbar : true, // 툴바 사용 여부 (true:사용/ false:사용하지 않음)
						bUseVerticalResizer : true, // 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
						bUseModeChanger : true, // 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
						fOnBeforeUnload : function() {

						}
					}, //boolean
					fOnAppLoad : function() {
						//예제 코드
						//oEditors.getById["contents"].exec("PASTE_HTML", ["로딩이 완료된 후에 본문에 삽입되는 text입니다."]);
					},
					fCreator : "createSEditor2"
				});
	});
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
						<h2>QnA - [답변]</h2>
					</div>
					<!-- //con_tit -->
					<div class="con">
						<!-- 내용 : s -->
						<div id="bbs">
							<div id="bread">
								<form method="post" name="frm" id="frm"
									action="answer.do?no=${data.no}" enctype="multipart/form-data">
									<input type="hidden" name="gno" value="${data.gno}">
									<input type="hidden" name="ono" value="${data.ono}">
									<input type="hidden" name="nested" value="${data.nested}">
									
									
									<table width="100%" border="0" cellspacing="0" cellpadding="0"
										summary="관리자 관리 기본내용입니다.">
										<colgroup>
											<col width="10%" />
											<col width="15%" />
											<col width="10%" />
											<col width="10%" />
											<col width="10%" />
											<col width="15%" />
										</colgroup>
										
										<tr>
											<td colspan="10"><strong>원문</strong></td>
										</tr>
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
															<a
																href="/include/file_down.jsp?file_name=${data.filename}"
																target="_blank"> ${data.filename } </a>
															<br />
														</c:if>
													</p>
												</div>
											</td>
										</tr>

										
										<tbody>
											<tr>
												<td colspan="10"><strong>답글</strong></td>
											</tr>
											<tr>
												<th scope="row"><label for="">*제목</label></th>
												<td colspan="10"><input type="text" id="title"
													name="title" class="w100" title="제목을 입력해주세요" /></td>
											</tr>
											<tr>
												<th scope="row"><label for="">*내용</label></th>
												<td colspan="10"><textarea id="content" name="content"
														title="내용을 입력해주세요" style="width: 100%;"></textarea></td>
											</tr>
											<tr>
												<th scope="row"><label for="">첨부파일</label></th>
												<td colspan="10"><input type="file" id="filename_tmp"
													name="filename_tmp" class="w100" title="첨부파일을 업로드 해주세요." />
												</td>
											</tr>
										</tbody>
									</table>
									<input type="hidden" name="cmd" value="write" />

									<div class="btn">
										<div class="btnLeft">
											<a class="btns" href="index.do"><strong>목록</strong></a>
										</div>
										<div class="btnRight">
											<a class="btns" style="cursor: pointer;"
												href="javascript:$('#frm').submit();"><strong>저장</strong></a>
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
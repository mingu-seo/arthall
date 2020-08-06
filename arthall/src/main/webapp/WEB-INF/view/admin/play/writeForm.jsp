<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/WEB-INF/view/admin/include/headHtml.jsp" %>
<script>
//smarteditor
var oEditors = [];
$(function() {
	
	nhn.husky.EZCreator.createInIFrame({
		oAppRef: oEditors,
		elPlaceHolder: "ct", // textarea ID
		sSkinURI: "<%=request.getContextPath()%>/smarteditor/SmartEditor2Skin.html",	
		htParams : {
			bUseToolbar : true,				// 툴바 사용 여부 (true:사용/ false:사용하지 않음)
			bUseVerticalResizer : false,		// 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
			bUseModeChanger : true,			// 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
			fOnBeforeUnload : function(){
				
			}
		}, //boolean
		fOnAppLoad : function(){
			//예제 코드
			//oEditors.getById["contents"].exec("PASTE_HTML", ["로딩이 완료된 후에 본문에 삽입되는 text입니다."]);
		},
		fCreator: "createSEditor2"
	});
});


	function check() {
		 oEditors.getById['ct'].exec('UPDATE_CONTENTS_FIELD',[]);
		}

// $(function() {
// 	$("#playType").change(function() {
// 		if ($(this).val() == "1") {
// 			$("#priceTr0").show();
// 			$("#priceTr1").hide();
			
// 		} else {
// 			$("#priceTr1").show();
// 			$("#priceTr0").hide();
			
// 		}
// 	});
// });
	
// function checkType(){
// 	if ($("#playType").val() == "1") {
// 		$("#priceTr1").remove();
// 	} else if ($("#playType").val() == "2") {
// 		$("#priceTr0").remove();
// 	}
// }
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
					<h2>공연/전시 - [추가]</h2>
				</div>
				<!-- //con_tit -->
				<div class="con">
					<!-- 내용 : s -->
					<div id="bbs">
						<div id="bread">
							<form method="post" name="frm" id="frm" action="write.do" onsubmit="return check()" enctype="multipart/form-data">
							<table width="100%" border="0" cellspacing="0" cellpadding="0" summary="관리자 관리 기본내용입니다.">
								<colgroup>
									<col width="0.05%" />
									<col class="w2" />
									<col class="w2" />
									<col width="10%" />
								</colgroup>
								<tbody>
									<tr>
										<th scope="row" colspan="2"><label for="">* 제목</label></th>
										<td colspan="10">
											<input type="text" id="playName" name="playName" class="w20" title="제목을 입력해주세요" value='TEST'/>	
										</td>
									</tr>
									<tr>
										<th scope="row" colspan="2"><label for="">* 홀번호</label></th>
										<td colspan="10">
											<input type="text" id="hallNo" name="hallNo" class="w20" title="제목을 입력해주세요" value='2'/>	
										</td>
									</tr>
									<tr>
										<th scope="row" rowspan="2"><label for="">*기간</label></th>
			                            <th scope="col">시작일<br>(캘린더적용?)</th> 
										<td colspan="2">
											<input type="text" id="startDate" name="startDate" class="w5" placeholder="YYYY-MM-DD" value='2000-05-05'/>	
										</td>
									</tr>
			                        <tr>
				                        <th scope="col">종료일<br>(캘린더적용?)</th>
				                        <td colspan="2">
											<input type="text" id="endDate" name="endDate" class="w5" placeholder="YYYY-MM-DD" value='2000-05-05' />	
										</td>
			                        </tr>
									<tr>
										<th scope="row" colspan="2"><label for="">* 분류</label></th>
										<td>
											<SELECT id="playType" name="playType" style="font-size: 12px">
												<OPTION value='1'>공연</OPTION>
												<OPTION value='2'>전시</OPTION>
											</SELECT>
										</td>
									</tr>
<!-- 									<tr id="priceTr0"> -->
<!-- 									'가격' 한 줄로 추가해서 콤보박스(공연/전시), 공연이면 세개 전시면 회색처리 -->
<!-- 										<th scope="row" colspan="2"><label for="" colspan="2">* 가격(공연)</label></th> -->
<!-- 										<td colspan="10"> -->
<!-- 											<input type="text" id="priceA" name="priceA" class="w100" title="제목을 입력해주세요" value='' />	 -->
<!-- 											<input type="text" id="priceB" name="priceB" class="w100" title="제목을 입력해주세요" value='' />	 -->
<!-- 											<input type="text" id="priceC" name="priceC" class="w100" title="제목을 입력해주세요" value='' /> -->
<!-- 											<input type="hidden" id="playType" name="playType" value="1" /> -->
<!-- 										</td> -->
<!-- 									</tr> -->
<!-- 									<tr id="priceTr1" style="display:none;"> -->
<!-- 									'가격' 한 줄로 추가해서 콤보박스(공연/전시), 공연이면 세개 전시면 회색처리 -->
<!-- 										<th scope="row" colspan="2"><label for="">* 가격(전시회)</label></th> -->
<!-- 										<td colspan="10"> -->
<!-- 											<input type="text" id="exhPrice" name="exhPrice" class="w100" title="제목을 입력해주세요" value='' /> -->
<!-- 											<input type="hidden" id="playType" name="playType" value="2" />	 -->
<!-- 										</td> -->
<!-- 									</tr> -->
									<tr>
										<th scope="row"  colspan="2"><label for="">* 출연진/작가</label></th>
										<td colspan="10">
											<input type="text" id="starring" name="starring" class="w100" value='이승효역 이승효' />	
										</td>
									</tr>
									<tr>
										<th scope="row" colspan="2"><label for="">* 내용</label></th>
										<td colspan="10">
											<textarea id="ct" name="content"></textarea>
										</td>
									</tr>
									<tr>
										<th scope="row" colspan="2"><label for="">* 등급</label></th>
										<td colspan="10">
											<input type="text" id="rating" name="rating" class="w100" title="제목을 입력해주세요" value='전체 이용가' />	
										</td>
									</tr>
									<tr>
										<th scope="row" colspan="2"><label for="">* 러닝타임</label></th>
										<td colspan="10">
											<input type="text" id="runningTime" name="runningTime" class="w100" title="제목을 입력해주세요" value='800' />	
										</td>
									</tr>
									<tr>
										<th scope="row" colspan="2"><label for="">* 문의</label></th>
										<td colspan="10">
											<input type="text" id="inquiry" name="inquiry" class="w100" title="제목을 입력해주세요" value='승효승효 010-9144-7776' />	
										</td>
									</tr>
									<tr>
										<th scope="row" colspan="2"><label for="">* 제작/주최</label></th>
										<td colspan="10">
											<input type="text" id="producer" name="producer" class="w100" title="제목을 입력해주세요" value='승효컴퍼니' />	
										</td>
									</tr>
									<tr>
										<th scope="row" colspan="2"><label for="">첨부파일</label></th>
										<td colspan="10">
											<c:if test="${!empty vo.filename}">
												<td><img src='/upload/play/${vo.filename}'/></td>
											</c:if>
											<input type="file" id="filename_tmp" name="filename_tmp" class="w100" title="첨부파일을 업로드 해주세요." value=''/>	
										</td>
									</tr>
								</tbody>
							</table>
							<input type="hidden" name="cmd" value="write" />
							
							<div class="btn">
								<div class="btnLeft">
									<a class="btns" href="list.do"><strong>목록</strong></a>
								</div>
								<div class="btnRight">
									<a class="btns" style="cursor:pointer;" onclick="checkType();" href="javascript:$('#frm').submit();"><strong>저장</strong></a>
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
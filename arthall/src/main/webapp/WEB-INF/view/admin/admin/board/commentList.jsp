<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="cbox">
	<ul>
		<c:forEach var="comment" items="${list}">
			<li>
				<div style="font-size:7px; color:grey; margin:5px">
					<span>
						${comment.writer}&nbsp;
					</span>
					<span>
						${comment.regdate}
					</span>
					<span>
						<a class="btns" href="javascript:delComment(${comment.no});"><strong>삭제</strong></a>
					</span>
				</div>
				<div style="margin:5px; padding-bottom:20px;">
					<p>
						${comment.content}
					</p>
				</div>
			</li>
		</c:forEach>
	</ul>
</div>


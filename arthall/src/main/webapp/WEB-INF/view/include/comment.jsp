<script>

	$(function() {
		listComment();
		$('textarea[name=content]').keyup(function(){
			var count = $(this).val().length;
			$('#clen').text(count)
		})
		$('#cbtn').click(function(){
			var data = $("#frm").serialize();
			$.ajax({
				url:'${pageContext.request.contextPath}/comment/comment.do',
				method:'post',
				async:true,
				data:data,
				success : function(data) {
					if (data.trim() == 'true') {
						$('textarea[name=content]').val('');
						listComment();
					} else {
					}
				},
				error:function() {
					alert("서버 장애");
				}
			});
		});
	});
	function listComment() {
		$.ajax({
			url:"${pageContext.request.contextPath}/comment/commentList.do?table_name=${table_name}&post_no=${data.no}",// data: 게시글VO객체
			cache: false,
			async:true,
			dataType:'HTML',
			success : function(data) {
				var cmts = data.trim();
				$('#cbox').html(cmts);
				
			}
	    
		});
	}
	function delComment(no) {
		$.ajax({
			url:'${pageContext.request.contextPath}/comment/deleteComment.do',
			method:'post',
			async:true,
			data:{no:no},
			success : function(data) {
				if (data.trim() == "true") {
					listComment();
				} else {
					alert("서버 장애");
				}
			}
		});
	}
</script>
<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/view/admin/include/headHtml.jsp"%>

<style>
        .div1{
            width: 80%;
            border: 1px solid #000;
            position: relative;
            padding: 10px 30px 15px;
        }
        .div2{
            width: 95%;
            border: 1px solid #000;
            position: relative;
            padding: 10px 30px 15px;
        }
    </style>
    <script>
        var si;
        $(function(){
            $(".div2").hide();

            $('.div1').click(function(){
                $('.div2').hide(300);
                $(this).find('.div2').show(300);
            });
        });
    </script>
</head>

<body>
<form>
	<table style="width: 80%;">
		<c:forEach var="faq" items="${list}">
		<tr>
			<td><div class="div1">${faq.title }
	        	<div class="div2">${faq.content }</div>
	    	</div></td>
		</c:forEach>
		</tr>
	</table>
</form>
</body>
</html>
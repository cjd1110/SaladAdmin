<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="../css/default.css"> 
<link rel="stylesheet" type="text/css" href="../css/delivery.css"> 
<title> </title>
</head>
<body>

<div class="container">
		<jsp:include page="../inc/header.jsp" />
		
		<div class="delivery">
			
			<div>
				<ul>
					<li><a href="">배송</a></li>
					<li><a href="">반품/교환</a></li>
				</ul>
			</div>
			
			<div>
				<ul>
					<li><a href="">주문확인 [n건]</a></li>
					<li><a href="">발송요청 [n건]</a></li>
					<li><a href="">배송지시 [n건]</a></li>
					<li><a href="">배송중 [n건]</a></li>
					<li><a href="">배송완료 [n건]</a></li>
				</ul>
			</div>
		
		</div>
		
		<jsp:include page="../inc/footer.jsp" />
</div>		
		

</body>
</html>
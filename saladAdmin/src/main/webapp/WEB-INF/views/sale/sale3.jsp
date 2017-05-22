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
					<li><a href="">일일수익</a></li>
					<li><a href="">월수익</a></li>
					<li><a href="">연수익</a></li>
				</ul>
			</div>
			
			<div>
				
				<h2>연수익</h2>
				<table>
					<tr>
						<!-- 이거 필드명 추가/수정할거 학현오빠가 자유롭게 th td 수정해주삼 -->
						<th>상품번호</th>
						<th>상품이름</th>
						<th>총 수량</th>
						<th>총 금액</th>
						<th>날짜</th>
					</tr>
					
					<tr>
						<td>01</td>
						<td>사과</td>
						<td>30</td>
						<td>30000</td>
						<td>2017-05-23</td>
					</tr>
				</table>
				
				<div class=""><< < 1 > >></div>
			</div>
		
		</div>
		
		<jsp:include page="../inc/footer.jsp" />
</div>		
		

</body>
</html>
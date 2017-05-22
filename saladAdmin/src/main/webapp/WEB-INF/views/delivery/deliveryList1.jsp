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
				
				<h2>주문확인</h2>
				<table>
					<tr>
						<!-- 이거 필드명 추가/수정할거 학현오빠가 자유롭게 th td 수정해주삼 -->
						<th><input type="checkbox" /></th>
						<th>주문번호</th>
						<th>예금주명</th>
						<th>입금계좌</th>
						<th>상품분류</th>
						<th>상품이름</th>
						<th>가격</th>
						<th>구매일</th>
						<th>주문상태</th>
					</tr>
					
					<tr>
						<td><input type="checkbox" /></td>
						<td>123456234</td>
						<td>유학현</td>
						<td>국민 11</td>
						<td>7종류</td>
						<td>사과/사과/블루베리/양상추/요거트/발사믹</td>
						<td>4000원</td>
						<td>2017-05-19</td>
						<td>입금전</td>
					</tr>
				</table>
				
				<div class=""><input type="button" value="결제완료" /></div>
			</div>
		
		</div>
		
		<jsp:include page="../inc/footer.jsp" />
</div>		
		

</body>
</html>
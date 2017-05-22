<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>MEMBER LIST</title>
<link rel="stylesheet" type="text/css" href="../css/default.css"> 
<link rel="stylesheet" type="text/css" href="../css/stock.css"> 
</head>
<body>
	<div class="container">
		<jsp:include page="../inc/header.jsp" />
		
		<div class="stockList">
			
			<form action="" method="post">
				<p><input type="search" /></p>
				<p><input type="submit" value="검색" /></p>
			</form>
			
			<ul class="stock_topmenu">
				<li><a href="">상품추가</a></li>
				<li><a href="">상품수정</a></li>
				<li><a href="">상품삭제</a></li>
				<li><a href="">카테고리추가</a></li>
			</ul>
			
			<ul class="stockmenu">
				<li><a href="">전체</a></li>
				<li><a href="">야채</a></li>
				<li><a href="">과일</a></li>
				<li><a href="">견과류</a></li>
				<li><a href="">소스</a></li>
				<li><a href="">사이드</a></li>
				<li><a href="">완제품</a></li>
			</ul>
			
			<table>
				<tr>
					<th><input type="checkbox" value="" /></th>
					<th>카테고리</th>
					<th>이름</th>
					<th>가격</th>
					<th>그램</th>
					<th>설명</th>
					<th>수량</th>
					<th> </th>
				</tr>
				
				<tr>
					<td><input type="checkbox" value="" /></td>
					<td>과일</td>
					<td>사과</td>
					<td>1000원</td>
					<td>100g</td>
					<td>싱싱한 거창 사과</td>
					<td><input type="number" /></td>
					<td><input type="button" value="재고수정" /></td>
				</tr>
				
				
			</table>
			
			
		</div><!-- memberList -->
		
		<jsp:include page="../inc/footer.jsp" />
	</div>
</body>
</html>
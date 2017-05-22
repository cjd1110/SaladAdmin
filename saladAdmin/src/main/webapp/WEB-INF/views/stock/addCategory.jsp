<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<link rel="stylesheet" type="text/css" href="../css/default.css"> 
<link rel="stylesheet" type="text/css" href="../css/stock.css"> 
</head>
<body>
	<div class="container">
		<jsp:include page="../inc/header.jsp" />
		
		<div class="stockAdd">
			
			<form action="" method="post">
				<table>
					
					<tr>
						<th><label for="s_category">카테고리</label></th>
						<td><input type="text" id="s_category" /></td>
						<td><input type="submit" value="추가" /></td>
					</tr>
					
				</table>
				
				
			</form>
			
			<div>
				<p>현재 카테고리 목록</p>
				<ul>
					<li>야채 <a href="">X</a> </li>
					<li>과일 <a href="">X</a> </li>
					<li>견과류 <a href="">X</a> </li>
					<li>소스 <a href="">X</a> </li>
					<li>사이드 <a href="">X</a> </li>
					<li>완제품 <a href="">X</a> </li>
				</ul>
			</div>
			
			
			
		</div><!-- stockAdd -->
		
		<jsp:include page="../inc/footer.jsp" />
	</div>
</body>
</html>
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
						<td>
							<select id="s_category">
								<option value="야채">야채</option>
								<option value="과일">과일</option>
								<option value="견과류">견과류</option>
								<option value="소스">소스</option>
								<option value="사이드">사이드</option>
								<option value="완제품">완제품</option>
							</select>
						</td>
					</tr>
					
					<tr>
						<th><label for="s_file">제품사진</label></th>
						<td><input type="file" /></td>
					</tr>
					
					<tr>
						<th><label for="s_name">제품명</label></th>
						<td><input type="text"  id="s_name" /></td>
					</tr>
					
					<tr>
						<th><label for="s_price">가격</label></th>
						<td><input type="number"  id="s_price" />원</td>
					</tr>
					
					<tr>
						<th><label for="s_gram">그램</label></th>
						<td><input type="number"  id="s_gram" />g</td>
					</tr>
					
					<tr>
						<th><label for="s_detail">제품정보</label></th>
						<td><input type="text"  id="s_detail" /></td>
					</tr>
					
					<tr>
						<th><label for="s_num">수량</label></th>
						<td><input type="number"  id="s_num" /></td>
					</tr>

				</table>
				
				<div><input type="submit" value="등록" /></div>
				
			</form>
			
			
			
		</div><!-- stockAdd -->
		
		<jsp:include page="../inc/footer.jsp" />
	</div>
</body>
</html>
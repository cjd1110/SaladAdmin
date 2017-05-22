<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>MEMBER LIST</title>
<link rel="stylesheet" type="text/css" href="../css/default.css"> 
<link rel="stylesheet" type="text/css" href="../css/member.css"> 
</head>
<body>
	<div class="container">
		<jsp:include page="../inc/header.jsp" />
		
		<div class="memberList">
			
			<form action="" method="post">
				<p><input type="search" /></p>
				<p><input type="submit" value="검색" /></p>
			</form>
			
			<table>
				<tr>
					<th>ID</th>
					<th>이름</th>
					<th>생년월일</th>
					<th>주소</th>
					<th>연락처</th>
					<th>이메일</th>
					<th>성별</th>
					<th>마일리지</th>
					<th>등급</th>
				</tr>
				
				<tr>
					<td>gkdldy</td>
					<td>강서윤</td>
					<td>19940523</td>
					<td>05564 서울특별시 송파구 잠실본동 211-15번지 해피빌503호</td>
					<td>010-2086-2212</td>
					<td>wojoo0522@naver.com</td>
					<td>여</td>
					<td>200</td>
					<td>새싹</td>
				</tr>
				
				<tr>
					<td>juknowjunho</td>
					<td>주노준호</td>
					<td>19921111</td>
					<td>05564 서울특별시 송파구 잠실본동 211-15번지 해피빌503호</td>
					<td>010-2086-2212</td>
					<td>wojoo0522@naver.com</td>
					<td>남</td>
					<td>200</td>
					<td>꽃</td>
				</tr>
				
			</table>
			
			<div class="paging">
				< << 1 > >>
			</div>
			
		</div><!-- memberList -->
		
		<jsp:include page="../inc/footer.jsp" />
	</div>
</body>
</html>
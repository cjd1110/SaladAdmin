<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="../css/default.css"> 
<link rel="stylesheet" type="text/css" href="../css/banner.css"> 
<title> </title>
</head>
<body>

<div class="container">
		<jsp:include page="../inc/header.jsp" />
		
		<div class="banner">
			
			<div class="banner_box">
				<h2>배너 관리</h2>
				<form action="">
					<ul>
						<li><label for="banner1">슬라이드1</label> <input type="file" id="banner1" /></li>
						<li><label for="banner2">슬라이드2</label> <input type="file" id="banner2" /> <a href="">X</a></li>
						<li><label for="banner3">슬라이드3</label> <input type="file" id="banner3" /> <a href="">X</a></li>
					</ul>
					
					<div><input type="submit" value="저장" /></div>
				</form>
			</div><!-- 배너관리 -->
			
			<div class="calendar_box">
				<h2>식단표 관리</h2>
				<form action="">
					<ul>
						<li><label for="calendar">식단표</label> <input type="file" id="calendar" /></li>
					</ul>
					
					<div><input type="submit" value="저장" /></div>
				</form>
			</div><!-- 식단표 관리 -->
			
			<div class="popup_box">
				<h2>팝업 관리</h2>
				<form action="">
					<ul>
						<li><label for="popup">팝업</label> <input type="file" id="popup" /><a href="">X</a></li>
						<li><label for="popup_date">기간</label> <input type="date" /> ~ <input type="date" /></li>
					</ul>
					
					<div><input type="submit" value="저장" /></div>
				</form>
			</div><!-- 팝업 관리 -->
			
		</div>
		
		<jsp:include page="../inc/footer.jsp" />
</div>		
		

</body>
</html>
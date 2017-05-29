<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<script src="http://code.jquery.com/jquery-latest.min.js" />
<script src="https://code.jquery.com/jquery-3.2.1.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>INDEX</title>

<script type="text/javascript">
	var id = "<c:out value="${id_false}"/>";
		if (id == 'id_false') {
          alert('아이디가 존재하지 않습니다.');
    }
	var pwd = "<c:out value="${pwd_false}"/>";
		if (pwd == 'pwd_false') {
		  alert('비밀번호가 다릅니다.');
	}
</script>
</head>
<body>
	<div class="container">
		<!-- admin login -->
		<form action="/salad/admember/login.do" method="post">
			<ul>
				<li><label for="ad_id">ID</label> <input type="text" id="ad_id"
					name="ad_id" /></li>
				<li><label for="ad_pwd">Password</label> <input type="password"
					id="ad_pwd" name="ad_pwd" /></li>
				<li><input type="submit" value="로그인" /></li>
			</ul>
		</form>
	</div>
	<a href="/salad/excelConvert.jsp">테스트</a>
</body>
</html>
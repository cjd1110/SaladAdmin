<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="../css/default.css"> 
<link rel="stylesheet" type="text/css" href="../css/delivery.css"> 
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<title>이문열바보</title>
<script type="text/javascript">
$(document).ready(function(){
	$("#excelConvertBtn").on('click', function(){
		location.href="excelConvert.do";
	});
});

<c:if test="${result != null}">
alert("C:\에 주문목록 다운완료");
</c:if>
</script>
</head>
<body>


		<div class="delivery">
			<div>
				<ul>
					<li><a href="">배송</a></li>
					<li><a href="">반품/교환</a></li>
				</ul>
			</div>
			
			<div>
							
				<h2>발송요청</h2>
				<table>
					<tr>
						<!-- 이거 필드명 추가/수정할거 학현오빠가 자유롭게 th td 수정해주삼 -->
						<th><input type="checkbox"/></th>
						<th>주문번호</th>
						<th>구매자이름</th>
						<th>구매자주소</th>
						<th>구매자연락처</th>
						<th>상품코드</th>
						<th>상품이름</th>
						<th>수량</th>
						<th>받는이이름</th>
						<th>받는이주소</th>
						<th>받는이연락처</th>
						<th>박스수량</th>
						<th>박스번호</th>
						<th>배송업체</th>
						<th>송장번호</th>
					</tr>
					<tr>
					
					<c:forEach items="${directlist}" var="directlist">
						<td>${directlist.i_ordernum}</td>
						<td>${directlist.i_buyername}</td>
						<td>${directlist.i_buyeraddr}</td>
						<td>${directlist.i_buyertel}</td>
						<td>${directlist.i_pnumber}</td>
						<td>${directlist.i_pname}</td>
						<td>${directlist.i_quantity}</td>
						<td>${directlist.i_receivename}</td>
						<td>${directlist.i_receiveaddr}</td>
						<td>${directlist.i_receivetel}</td>
						<td>${directlist.i_boxquantity}</td>
						<td>${directlist.i_boxnum}</td>
						<td>입력전</td>
						<td>입력전</td>		
					</tr>
					</c:forEach>
				</table>
				<!-- <button type="button" onclick="location.href='exportToExcel.do'">주문목록받기</button> -->
				<input type="button" name="excelConvertBtn" id="excelConvertBtn" value="주문목록받기" style="cursor:hand;"/>
				</form>
			</div>
		</div>
		

</body>
</html>
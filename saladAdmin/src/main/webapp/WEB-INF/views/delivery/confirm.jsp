<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<link rel="stylesheet" type="text/css" href="../css/default.css">
<link rel="stylesheet" type="text/css" href="../css/delivery.css">
<title></title>

<script type="text/javascript"> 
// 체크박스 전체선택
$(document).ready(function() {
   //최상단 체크박스 클릭
   $("#multi").click(function() {
      //클릭되었으면
      if ($("#multi").prop("checked")) {
         //input태그의 name이 chk인 태그들을 찾아서 checked옵션을 true로 정의
         $("input[name=o_step]").prop("checked", true);
         //클릭이 안되있으면
      } else {
         //input태그의 name이 chk인 태그들을 찾아서 checked옵션을 false로 정의
         $("input[name=o_step]").prop("checked", false);
      }
   })
})

   function multicheck() {
      var orderNum = document.getElementsByName("o_step");
      var sum = new Array();
      var j = 0;
      for (var i = 0; i < orderNum.length; i++) {
         if (orderNum[i].checked) {
            sum[j] = orderNum[i].value;
            j = j + 1;
         }
      }
      window.location.href = "multicheck.do?o_step=" + sum;
   }
   
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

			<h2>주문확인</h2>
			<table>
				<tr>
					<!-- 이거 필드명 추가/수정할거 학현오빠가 자유롭게 th td 수정해주삼 -->
					<th><input type="checkbox" id="multi" /></th>
					<!-- 전체 체크 되게 -->
					<th>주문번호</th>
					<th>팩 번호</th>
					<th>팩 수량</th>
					<th>입금자명</th>
					<th>입금은행</th>
					<th>입금계좌</th>
					<th>총금액</th>
					<th>주문상태</th>
				</tr>
				
					<c:forEach items="${orderlist}" var="list">
						<tr>
							<td>스텝값 : ${list.o_step}</td>
							<td><input type="checkbox" name="o_step"
								value="${list.o_step}" /></td>
							<td><input type="hidden" name="o_ordernum"
								value="${list.o_ordernum}" />${list.o_ordernum}</td>
							<td><input type="hidden" name="o_boxnum"
								value="${list.o_boxnum}" />${list.o_boxnum}</td>
							<td><input type="hidden" name="o_boxquantity"
								value="${list.o_boxquantity}" />${list.o_boxquantity}</td>
							<td><input type="hidden" name="p_depositor"
								value="${list.p_depositor}" />${list.p_depositor}</td>
							<td><input type="hidden" name="p_bankname"
								value="${list.p_bankname}" />${list.p_bankname}</td>
							<td><input type="hidden" name="p_way" value="${list.p_way}" />${list.p_way}</td>
							<td><input type="hidden" name="p_amount"
								value="${list.p_amount}" />${list.p_amount}</td>
							<td><input type="hidden" name="o_orderstate"
								value="${list.o_orderstate}" />${list.o_orderstate}</td>
						</tr>
					</c:forEach>
			</table>

			<div class="">
				<input type="button" id="multibutton" value="결제완료"
					onclick="multicheck()" />
			</div>
		</div>

	</div>



</body>
</html>
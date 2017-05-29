<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="application/vnd.ms-excel;charset=euc-kr" import="java.sql.*,java.text.*"%>
<%
//******************************MS excel******************************
    // MS excel로 다운로드/실행, filename에 저장될 파일명을 적어준다.
    response.setHeader("Content-Disposition","attachment;filename=member.xls");
    response.setHeader("Content-Description", "JSP Generated Data");
    
    //이걸 풀어주면 열기/저장 선택창이 뜨는 게 아니라 그냥 바로 저장된다.
   // response.setContentType("application/vnd.ms-excel");
%>
<html>
<head>
 <title>고객</title>
 <meta http-equiv='Content-Type' content='application/vnd.ms-excel; charset=utf-8'/>
 <style type="text/css">
  .tbl_grid {border:1px solid #333333;width:1000px;clear:both;line-height:15px;}
  .tbl_grid th {padding:8px 0;border:1px solid #666666;text-align:center;font-size:11px;font-weight:normal;color:#444;background:#dedede;line-height:14px;}
  .tbl_grid td {padding:8px;font-size:11px;color:#444;border:1px solid #666666;text-align:center;background:#ffffff;}
  .tbl_grid .td01 {background:#f2f4f4;}
  .tbl_grid .tleft {text-align:left;padding-right:4px;}
  .tbl_grid .tright {text-align:right;padding-right:4px;} 
 </style>
 
</head>
<body>
<table class="tbl_grid">           
 <colgroup>
  <col />
  <col />
  <col />
  <col />
  <col />
  <col />
  <col />
  <col />
  <col />
 </colgroup>
 <thead>    
 <tr>
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
 </thead>
 <tbody>    
 <c:forEach var="list" items="${olist}" varStatus="status">
   <tr>
   <td>${list.i_ordernum}</td>
   <td>${list.i_buyername}</td>
   <td>${list.i_buyeraddr}</td>
   <td>${list.i_buyertel}</td>
   <td>${list.i_pnumber}</td>
   <td>${list.i_pname}</td>
   <td>${list.i_quantity}</td>
   <td>${list.i_receivename}</td>
   <td>${list.i_receiveaddr}</td>
   <td>${list.i_receivetel}</td>
   <td>${list.i_boxquantity}</td>
   <td>${list.i_boxnum}</td>
   <td>입력전</td>
   <td>입력전</td>		
   </tr>
 </c:forEach>
</table>
</body>

</html>
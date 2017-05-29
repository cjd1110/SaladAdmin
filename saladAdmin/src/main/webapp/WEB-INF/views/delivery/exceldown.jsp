<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="application/vnd.ms-excel;charset=euc-kr" import="java.sql.*,java.text.*"%>
<%
//******************************MS excel******************************
    // MS excel�� �ٿ�ε�/����, filename�� ����� ���ϸ��� �����ش�.
    response.setHeader("Content-Disposition","attachment;filename=member.xls");
    response.setHeader("Content-Description", "JSP Generated Data");
    
    //�̰� Ǯ���ָ� ����/���� ����â�� �ߴ� �� �ƴ϶� �׳� �ٷ� ����ȴ�.
   // response.setContentType("application/vnd.ms-excel");
%>
<html>
<head>
 <title>��</title>
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
  <th>�ֹ���ȣ</th>
  <th>�������̸�</th>
  <th>�������ּ�</th>
  <th>�����ڿ���ó</th>
  <th>��ǰ�ڵ�</th>
  <th>��ǰ�̸�</th>
  <th>����</th>
  <th>�޴����̸�</th>
  <th>�޴����ּ�</th>
  <th>�޴��̿���ó</th>
  <th>�ڽ�����</th>
  <th>�ڽ���ȣ</th>
  <th>��۾�ü</th>
  <th>�����ȣ</th>
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
   <td>�Է���</td>
   <td>�Է���</td>		
   </tr>
 </c:forEach>
</table>
</body>

</html>
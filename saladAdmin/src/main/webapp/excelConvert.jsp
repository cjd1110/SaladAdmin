<%@ page contentType="application/vnd.ms-excel; charset=UTF-8" pageEncoding="UTF-8" import ="java.util.*"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="com.kosta.admin.dto.delivery.InformationDto" %>
<%@ page import="com.kosta.admin.dao.delivery.*" %>

<%
	//출력 데이터 받기
	DeliveryDAO dao = new DeliveryDAOImpl();
	ArrayList<InformationDto> list = new ArrayList<InformationDto>();
	
	System.out.println("list 사이즈 : " +  list.size());
	

	
	System.out.println("list 사이즈2 : " +  list.size());
	//파일명에 다운로드 날짜 붙여주기 위해 작성
	Date date = new Date();
	SimpleDateFormat dayformat = new SimpleDateFormat("yyyyMMdd", Locale.KOREA);
	SimpleDateFormat hourformat = new SimpleDateFormat("hhmmss",Locale.KOREA);
	String day = dayformat.format(date);
	String hour=hourformat.format(date);
	String fileName="excel" + day + "_" + hour;
	
	response.setHeader("Content-Disposition", "attachment; filename="+new String((fileName).getBytes("KSC5601"),"8859_1")+".xls");
	response.setHeader("Content-Description", "JSP Generated Date");
%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border="1">
		</th>
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
		
		<% for(int i=0; i<list.size(); i++){ %>
			<tr> 
				<td><%=list.get(i).getI_ordernum() %></td>
				<td><%=list.get(i).getI_buyername() %></td>
				<td><%=list.get(i).getI_buyeraddr() %></td> 
				<td><%=list.get(i).getI_buyertel() %></td> 
				<td><%=list.get(i).getI_pnumber() %></td> 
				<td><%=list.get(i).getI_pname() %></td>  
				<td><%=list.get(i).getI_quantity() %></td> 
				<td><%=list.get(i).getI_receivename() %></td>
				<td><%=list.get(i).getI_receiveaddr() %></td> 
				<td><%=list.get(i).getI_receivetel() %></td> 
				<td><%=list.get(i).getI_boxquantity() %></td>
				<td><%=list.get(i).getI_boxnum() %></td>
				<td>입력전</td>
				<td>입력전</td>
			</tr>
			<%}%>
		
	</table>
</body>
</html>
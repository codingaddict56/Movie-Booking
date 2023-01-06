 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
     <%@page isELIgnored="false" %>
  <%--   <%@include file="book.jsp" %> --%>
		<jsp:include page="header.jsp"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Booking Details:</title>
	<style type = "text/css">
	th{
		background:red;
		color:white;
	}
	.paynext{border:1px solid red;}
	h2{background-color:red;
		color:white;}
</style>
</head>
<body>

<form action="xx"> 
<div>
<center>
<h2>Booking details:</h2>
	<div class="paynext">
<h3>Select Tickets/Seats:<%String Selected_Seat=request.getParameter("noseat");
out.println(Selected_Seat);
%></h3>

<h3>Category:<%
String t_type=request.getParameter("fav_language");
out.println(t_type);
    %></h3>
    <!-- unable to fetch price from database -->
    <h3>
<%--     <c:forEach var="tab" items="${data}">
    <%-- <h2>${tab.price}</h2> --%> 
   <%-- </c:forEach> --%>
    </h3>
  <a href="www.payment.jsp">  <input type="button" value="Proceed for checkout"></a>
</div>	

</center>

</div>
</form>
</body>
</html>
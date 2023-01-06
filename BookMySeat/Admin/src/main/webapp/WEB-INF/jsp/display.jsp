<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@page isELIgnored="false" %>
    <jsp:include page="header.jsp"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
	<style type = "text/css">
	th{
		background:black;
		color:white;
	}
</style>
</head>
<body>
<center>
	<h1>Movie Records</h1>
	<table border="2" width="75%">
		<tr>
			<th>Movie ID</th>
			<th>Movie Name</th>
			<th>Cinema Hall</th>
			<th>Language</th>
			<th>Location</th>
		</tr>
		<c:forEach var="tab" items="${data}">
		<tr>
			<td>${tab.movieId }</td>
			<td>${tab.movieName }</td>
			<td>${tab.cinemaHall }</td>
			<td>${tab.language }</td>
			<td>${tab.location }</td>
		</tr>
		</c:forEach>
	</table>
	<br/>
	<h2>${msg }</h2>
</center>

</body>
</html>
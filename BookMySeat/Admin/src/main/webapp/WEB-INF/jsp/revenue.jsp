<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@page isELIgnored="false" %>
    <jsp:include page="header.jsp"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Revenue::BookMySeat</title>
</head>
<body>
<center>
	<h1>REVENUE PAGE</h1><br/>
	<form:form action="searchrevenue" method="post" modelAttribute="bean">
		or Enter Movie Nmae: <form:input path="movieName"/>  &nbsp;
		or Enter Cinema Hall: <form:input path="cinemaHall"/>  &nbsp;
		or Enter Location:<form:input path="location"/>  &nbsp;
		
		<input type="submit" value="Search"> <br/> <br/> <br/>
		
	</form:form>
	
		<table border="2" width="75%">
		<tr>
			<th>Movie Name</th>
			<th>Cinema Hall</th>
			<th>Language</th>
			<th>Location</th>
			<th>Total Revenue</th>
		</tr>
		<c:forEach var="tab" items="${lii}">
		<tr>
			<td>${tab.movieId }</td>
			<td>${tab.movieName }</td>
			<td>${tab.cinemaHall }</td>
			<td>${tab.location }</td>
		</tr>
		</c:forEach>
		</table>
		
	<h2>${msg }</h2>
</center>


</body>
</html>
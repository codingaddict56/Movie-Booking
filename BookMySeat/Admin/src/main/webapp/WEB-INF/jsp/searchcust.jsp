<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@page isELIgnored="false" %>
	<jsp:include page="header.jsp"/>
<!DOCTYPE html>
<html>
	<style type = "text/css">
	th{
		background:red;
		color:white;
	}
</style>
<head>
<meta charset="ISO-8859-1">
<title>Search::Movies</title>
</head>
<body>
<center>
	<h1>Search Movie</h1><br/>
	<form:form action="searchcust" method="post" modelAttribute="bean">
		or Enter MovieId:<form:input path="movieId"/> &nbsp;
		or Enter Movie Nmae: <form:input path="movieName"/>  &nbsp;
		or Enter Location:<form:input path="location"/>  &nbsp;
		
		<input type="submit" value="Search"> <br/> <br/> <br/>
		
	</form:form>
	
		<table border="2" width="75%">
		<tr>
			<th>Movie ID</th>
			<th>Movie Name</th>
			<th>Cinema Hall</th>
			<th>Location</th>
			<th>Language</th>
			<th>book</th>
			
		</tr>
		<c:forEach var="tab" items="${liii}">
		<tr>
			<td> <form action="book" method="post" modelAttribute="bean"> 
			<input type="text" value="${tab.movieId }" name="movieId" readonly> </td>
			<td> <input type="text" value="${tab.movieName }" name="movieName"></td>
			<%-- <td> <input type="text" value="${tab.price}" name="price"></td> --%>
			<td><input type="text" value="${tab.cinemaHall }" name="cinemaHall"></td>
			<td><input type="text" value="${tab.location }" name="location"></td>
			<td><input type="text" value="${tab.language }" name="language"></td>
			<td align="center"><input type="submit" value="Book"></form></td>
			
			
			</form> </td>
			
			
		</tr>
		</c:forEach>
		</table>
		
	<h2>${msg }</h2>
</center>


</body>
</html>
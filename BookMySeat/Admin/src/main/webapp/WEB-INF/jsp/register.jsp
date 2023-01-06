;<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    <%@page isELIgnored="false" %> 
    <jsp:include page="header.jsp"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>AddMovies::BookMySeat</title>
<style type = "text/css">
	h2{
		color:red;
	}
</style>
</head>
<body>
	<center>
	<h1>Admin Page</h1><br/>
	<form:form action="store" method="post" modelAttribute="bean">
		Enter Movie Nmae: <form:input path="movieName"/> <br/><br/>
		Enter Cinema Hall: <form:input path="cinemaHall"/> <br/><br/>
		<!--Enter Language :<form:input path="language"/> <br/><br/>
		  Enter Location :<form:input path="location"/> <br/><br/>-->
		  Language:<form:select path="language" name="search"> 
                	<form:option value="Hindi" label="Hindi"/>
                <form:option value="Kannada" label="Kannada"/>
                <form:option value="Telugu" label="Telugu"/>
                <form:option value="Marati" label="Marati"/>
                </form:select> <br/><br/>
		
		Location:<form:select path="location" name="search">
                <form:option value="Bangalore" label="Bangalore"/>
                <form:option value="Delhi" label="Delhi"/>
                <form:option value="AP" label="AP"/>
                <form:option value="Pune" label="Pune"/>
                </form:select> <br/><br/>
		
		<input type="submit" value="Register">
	</form:form>
	<br/>
	<h2> ${msg} </h2>
	</center>
</body>
</html>
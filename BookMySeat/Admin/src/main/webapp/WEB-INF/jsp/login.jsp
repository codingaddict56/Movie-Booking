<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    <jsp:include page="header.jsp"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style type = "text/css">
	
	.box{
	background-color: #ff4d4d;
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
  }

</style>

<title>Login::BookMySeat</title>
</head>
<body>
<center>
	<h1>User Login</h1>
	<form:form action="sign" method="post" modelAttribute="beans">
		Enter Email Id : <form:input path="userEmail"/> <br/><br/>
		Enter password : <form:input path="password"/> <br/><br/>
		<input type="submit" value="Login" class="box">
		
	</form:form>
</center>

</body>
</html>
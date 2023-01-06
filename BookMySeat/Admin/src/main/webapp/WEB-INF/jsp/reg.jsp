<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    <%@page isELIgnored="false" %>
    <jsp:include page="header.jsp"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type = "text/css">
	h2{
		color:red;
	}
	
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
	
	
 a{
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
</head>
<body>
<center>
<h1> Register page</h1> <br/>
<form:form action="storeUser" method="post" modelAttribute="beans">
		Enter User Name: <form:input path="userName"/> <br/><br/>
		Enter User Email: <form:input path="userEmail"/> <br/><br/>
		Enter Password: <form:input path="password"/> <br/><br/>
		
		<input type="submit" value="Register" class="box">
</form:form>

<br/>
   
   <h2> ${msg}</h2>
   
   <a href="login">Click here to Login</a>
</center>
</body>
</html>
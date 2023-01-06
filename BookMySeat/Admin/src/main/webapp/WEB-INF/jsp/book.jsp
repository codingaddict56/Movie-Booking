 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
     <%@page isELIgnored="false" %>
	<jsp:include page="header.jsp"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Book_Ticket::BookMyMovie</title>
</head>
<body>
<h4>Select</h4>
<form action="bookt">
            <label for="noseat">Select no of Seat:</label>  
 			<input type="text" id="noseat" name="noseat"><br><br>

  <p>Please select your Ticket Catagory:</p>
  <input type="radio" id="silver" name="fav_language" value="Silver">
  <label for="silver">Silver:Rs.150</label><br>
  <input type="radio" id="gold" name="fav_language" value="Gold">
  <label for="gold">Gold: Rs180</label><br>
  <input type="radio" id="Platinum" name="fav_language" value="Platinum">
  <label for="platinum">Platinum: Rs.250</label>

  <br> 

	<input type="submit" value="BookTicket" onclick="window.location.href='displaybook'">
	
    
	</form>
	
</body>
</html>
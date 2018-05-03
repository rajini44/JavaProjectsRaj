<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
   <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h1> LogIn Page</h1>

<form action="submitLoginForm.html" method="post">

<p> User Name: <input type="text" name="userName"></input></p>

<p> Password: <input type="text" name="password"></input></p>

<p> Submit: <input type="submit" value= "Submit this form on click"></input></p>

</form>


</body>
</html>
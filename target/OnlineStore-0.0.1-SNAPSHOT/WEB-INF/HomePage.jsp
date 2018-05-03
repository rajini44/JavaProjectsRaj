<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
   <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
   
<style>
table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 100%;
}

td, th {
    border: 1px solid #dddddd;
    text-align: left;
    padding: 8px;
}

tr:nth-child(even) {
    background-color: #dddddd;
}
</style>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home Page</title>
</head>
<body>

<h1>Welcome to Home Page</h1>

<form action="add.html" method="post">
<p><input type="submit" value= "add"></input></p>

</form>

<div>Added Items </div>
<div>


<table>
  <tr>
    <th width=10%>ProductId</th>
    <th width=30%>Product Name</th>
    <th width=40%>Product Description</th>
    <th width=20%></th>
  </tr>
  
</table>

</div>

</body>
</html>


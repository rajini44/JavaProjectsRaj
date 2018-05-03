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

<h1> ${Header}</h1>
<form:errors path="studentDetls.*" />
<form action="submitAdmissionForm.html" method="post">

<p> Student Name: <input type="text" name="StdName"></input></p>

<p> Country: <input type="text" name="StdCountry"></input></p>

<p> Skill List: <select name="stdskillsList" multiple>
				<OPTION>Java Core</OPTION>
                <OPTION>Java Advanced</OPTION>
                <OPTION>Spring MVC</OPTION>
                </select>


<table>
<tr>
<td> Date of Birth : <input type="text" name="stdAddress.stdDOB"/></td>
</tr>
<tr>
<td> Mobile Number : <input type="text" name="stdAddress.stdMobile"/></td>
</tr>
<!-- <td> isCurrentAddress :<input type="checkbox" name="stdAddress.isCurrentAddress" ></td> -->

</table>

<p> Submit: <input type="submit" value= "Submit this form on click"></input></p>


</form>


</body>
</html>
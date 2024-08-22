<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee List</title>
</head>
<body>
    <h1>Employees List</h1>
   <table border="2" width="70%" cellpadding="2">
	<tr><th>Id</th><th>Name</th><th>Gender</th><th>Date of Birth</th><th>Address</th><th>City</th><th>State</th><th>LoginId</th><th>Edit</th></tr>
    <c:forEach var="emp" items="${list}"> 
    <tr>
    <td>${emp.id}</td>
    <td>${emp.name}</td>
    <td>${emp.gender}</td>
    <td>${emp.dateOfBirth}</td>
    <td>${emp.address}</td>
    <td>${emp.city}</td>
    <td>${emp.state}</td>
    <td>${emp.loginID}</td>
    <td><a href="editemp/${emp.id}">Edit</a></td>
    </tr>
    </c:forEach>
    </table>
  
    <br>
    <a href="logout">Logout</a>
</body>
</html>

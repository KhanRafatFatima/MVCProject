<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Edit Form</h1>
       <form:form method="POST" action="update">  
      	<table >  
      	<tr>
      	<td></td>  
         <td><form:hidden  path="id" name="id" /></td>
         </tr> 
         <tr>  
          <td>Name : </td> 
          <td><form:input path="name" name="name"  /></td>
         </tr>  
          <tr>  
          <td>Gender : </td> 
          <td><form:input path="gender" name="gender"  /></td>
         </tr><tr>  
          <td>Address : </td> 
          <td><form:input path="address" name="address" /></td>
         </tr>
         <tr>  
          <td>City : </td> 
          <td><form:input path="city" name="city" /></td>
         </tr>
         <tr>  
          <td>State : </td> 
          <td><form:input path="state" name="state" /></td>
         </tr>
         <tr>  
          <td>Password : </td> 
          <td><form:input path="password" type="password" name="password" /></td>
         </tr>
         
         <tr>  
          <td> </td>  
          <td><input type="submit" value="Update" /></td>  
         </tr>  
        </table>  
       </form:form>
</body>
</html>
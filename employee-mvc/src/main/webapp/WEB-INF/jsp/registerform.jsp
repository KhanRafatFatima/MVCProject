<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Employee</title>
<style>
  body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
    margin: 0;
    padding: 0;
  }

 h1 {
    text-align: center;
    margin: 18px 0;
    color: #5c5252;
}

  form {
    width: 300px;
    margin: -25px auto;
    padding: 20px;
  }

  label {
    display: block;
    margin: 10px 0 5px;
    font-weight: bold;
  }

  input[type="text"], input[type="date"] {
    width: 126%;
    padding: 8px;
    margin-bottom: 8px;
    border: 2px solid #d1c8c8;
    border-radius: 4px;
    box-sizing: border-box;
  }

  input[type="submit"] {
    width: 126%;
    padding: 10px;
    background-color: #323a43;
    color: #fff;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    font-size: 16px;
    font-weight: bold;
}
  }

  input[type="submit"]:hover {
    background-color: #1e2a32;
  }
</style>
</head>
<body>

<h1>WELCOME TO EMPLOYEE REGISTERATION FORM</h1>
<form method="POST" action="save">  
  <label for="name">Name:</label>
  <input type="text" id="name" name="name" required>

  <label for="dob">Date of Birth:</label>
  <input type="date" id="dob" name="dob" required>

  <label for="gender">Gender:</label>
  <input type="text" id="gender" name="gender" required>

  <label for="address">Address:</label>
  <input type="text" id="address" name="address" required>

  <label for="city">City:</label>
  <input type="text" id="city" name="city" required>

  <label for="state">State:</label>
  <input type="text" id="state" name="state" required>

  <label for="loginid">Login ID:</label>
  <input type="text" id="loginid" name="loginid" required>

  <label for="password">Password:</label>
  <input type="text" id="password" name="password" required>

  <input type="submit" value="Save">
</form>

</body>
</html>

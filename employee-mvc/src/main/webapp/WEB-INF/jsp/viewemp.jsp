<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome Page</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #e0e0e0; /* Softer gray background */
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
       
        height: 100vh;
    }

    .container {
        
        padding: 10px;
        border-radius: 10px;
        text-align: center;
    }

    h1 {
        color: #333;
    }

    a {
        display: inline-block;
        margin: 15px 10px;
        padding: 10px 20px;
        font-size: 16px;
        text-decoration: none;
        color: #fff;
        background-color: #5cb85c;
        border-radius: 5px;
        
    }

    a:hover {
        background-color: #4cae4c;
    }

    a.logout {
        background-color: #d9534f;
    }

    a.logout:hover {
        background-color: #c9302c;
    }
</style>
</head>
<body>
    <div class="container">
        <h1>Hello, ${sessionScope.username}!</h1>
        <a href="employeelist">Employees List</a>
        <a href="logout" class="logout">Logout</a>
    </div>
</body>
</html>

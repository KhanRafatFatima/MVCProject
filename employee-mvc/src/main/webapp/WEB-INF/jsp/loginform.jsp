<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<style>
  body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
    margin: 0;
    padding: 0;
    display: flex;
    align-items: center;
    justify-content: center;
    height: 100vh;
  }

  form {
    width: 300px;
    padding: 20px;
    background: #fff;
    border-radius: 8px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    text-align: center;
  }

  h2 {
    margin-bottom: 20px;
    color: #5c5252;
  }

  table {
    width: 100%;
    border-collapse: collapse;
  }

  td {
    padding: 10px;
  }

  label {
    display: block;
    font-weight: bold;
    margin-bottom: 5px;
  }

  input[type="text"], input[type="password"] {
    width: calc(100% - 22px);
    padding: 10px;
    margin-bottom: 15px;
    border: 1px solid #ddd;
    border-radius: 4px;
    box-sizing: border-box;
  }

  input[type="submit"] {
    width: 100%;
    padding: 10px;
    background-color: #323a43;
    color: #fff;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    font-size: 16px;
    font-weight: bold;
  }

  input[type="submit"]:hover {
    background-color: #1e2a32;
  }

  h3 {
    color: red;
    margin-top: 10px;
  }
</style>
</head>
<body>

<form action="logincheck" method="post">
    <h2>Login</h2>
    <table>
      <tr>
        <td><label for="username">Login ID:</label></td>
        <td><input type="text" id="username" name="username" required /></td>
      </tr>
      <tr>
        <td><label for="password">Password:</label></td>
        <td><input type="password" id="password" name="password" required /></td>
      </tr>
      <tr>
        <td></td>
        <td><input type="submit" value="Login" /></td>
      </tr>
    </table>
    <h3>${sessionScope.error}</h3>
</form>

</body>
</html>

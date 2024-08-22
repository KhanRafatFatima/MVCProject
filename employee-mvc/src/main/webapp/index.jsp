<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <style>
    body {
      font-family: 'Roboto', sans-serif;
      margin: 0;
      padding: 0;
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: center;
      height: 100vh; 
      text-align: center;
      background: linear-gradient(135deg, #2e8b57, #3cb371); /* Subtle gradient background */
      color: #f4f4f9;
    }

    #welcomeText {
      margin-top: 20px;
      font-size: 38px;
      font-weight: 700;
      color: #f4f4f9;
      text-shadow: 1px 1px 4px rgba(0, 0, 0, 0.3);
    }

    .button-container {
      display: flex;
      justify-content: center;
      margin-top: 30px;
    }

    a {
      display: inline-block;
      padding: 14px 28px;
      margin: 10px;
      text-decoration: none;
      color: #f4f4f9;
      background-color: #3a3f44;
      border-radius: 8px;
      font-size: 18px;
      font-weight: 500;
      transition: all 0.3s ease;
    }

    a:hover {
      background-color: #5c636a;
      box-shadow: 0px 5px 10px rgba(0, 0, 0, 0.2);
    }

    a:active {
      transform: translateY(2px);
    }
  </style>
</head>
<body>
  <div id="welcomeText">Welcome to the Employee Management Portal</div>
  <div class="button-container">
    <a href="registerform">Register</a>
    <a href="loginform">Login</a>
  </div>
</body>
</html>

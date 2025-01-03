<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ page import="util.HeaderFooterManager" %>
<%@ page import="com.coffeeshop.controller.SigninServlet" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Coffee Shop - Sign In</title>
    <link rel="stylesheet" href="style.css">
    <style>
        /* --- Sign-In Page Styles --- */
.signin-container {
    background-color: rgba(255, 255, 255, 0.9);
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            width: 350px;
            margin: 10px auto;
            position: relative;
            z-index: 2;
}

body.signin-page {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    padding-top: 80px;
}

/* Sign-In Form Header */
.signin {
    text-align: center;
    margin-bottom: 20px;
    color: #6b4f4f;
    font-size: 1.5em;
}

    .error {
        text-align: center;
         color: red;
            font-size: 0.9em;
        margin-top: 5px;
    }
</style>

</head>
<body class="signin-page">
    
        <%= HeaderFooterManager.getInstance().getHeader() %>

    <div class="signin-container">
        <h3 class="signin">Sign In</h3>
<form id="signinForm" action="signin" method="POST">  
            <div class="form-group">
                <label for="email">Email</label>
                <input type="email" id="email" name="email" required placeholder="xyz@gmail.com">
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" id="password" name="password" required placeholder="Enter your password">
            </div>
            <!-- Display error message if login fails -->
  <c:if test="${not empty error}">
    <div class="error">${error}</div>
</c:if>

            <button type="submit" class="submit-btn">Sign In</button>
                              
    
            <div class="options">
                <a href="#" class="forgot-password">Forgot Password?</a>
                <span> | </span>
                <a href="signup.jsp" class="signup-link">Sign Up</a>
            </div>

        </form>
    </div>

    <%= HeaderFooterManager.getInstance().getFooter() %>

</body>
</html>

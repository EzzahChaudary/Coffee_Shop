<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="util.HeaderFooterManager" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Coffee Shop - Sign Up</title>
    <link rel="stylesheet" href="style.css">
    <style>
       
        /* --- Sign-Up Page Styles --- */
        .signup-container {
            background-color: rgba(255, 255, 255, 0.9);
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            width: 350px;
            margin: 10px auto;
            position: relative;
            z-index: 2;
        }

        /* Sign-Up Page Body Styles */
        body.signup-page {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            padding-top: 80px;
        }

        /* Form Heading Styles */
        .signup {
            text-align: center;
            margin-bottom: 20px;
            color: #6b4f4f;
        }
        
        .error-message {
            color: red;
            font-size: 0.9em;
            margin-top: 5px;
        }
        

    </style>
</head>

<body class="signup-page">
    
    <%= HeaderFooterManager.getInstance().getHeader() %>

    <div class="signup-container">
        <h3 class="signup">Sign Up</h3>

        <form id="signupForm" action="data.jsp" method="POST">
           
<!-- Username -->
<div class="form-group">
    <label for="username">Username</label>
    <input 
        type="text" 
        id="username" 
        name="username" 
        placeholder="Enter username" 
        value="<%= (request.getAttribute("usernameError") != null && request.getParameter("username") != null) ? request.getParameter("username") : "" %>" 
        required>
    <small class="error-message">
        <%= request.getAttribute("usernameError") != null ? request.getAttribute("usernameError") : "" %>
    </small>
</div>

<!-- Email -->
<div class="form-group">
    <label for="email">Email</label>
    <input 
        type="email" 
        id="email" 
        name="email" 
        placeholder="Enter email" 
        value="<%= (request.getAttribute("emailError") != null && request.getParameter("email") != null) ? request.getParameter("email") : "" %>" 
        required>
    <small class="error-message">
        <%= request.getAttribute("emailError") != null ? request.getAttribute("emailError") : "" %>
    </small>
</div>

            <!-- Password -->
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" id="password" name="password" placeholder="Enter password" required>
                <small class="error-message"><%= request.getAttribute("passwordError") != null ? request.getAttribute("passwordError") : "" %></small>
            </div>

            <!-- Confirm Password -->
            <div class="form-group">
                <label for="confirmpassword">Confirm Password</label>
                <input type="password" id="confirm-password" name="confirmpassword" placeholder="Reenter your password" required>
                <small class="error-message"><%= request.getAttribute("confirmPasswordError") != null ? request.getAttribute("confirmPasswordError") : "" %></small>
            </div>

            <!-- Email Exists Error -->
            <% if (request.getAttribute("emailExistsError") != null) { %>
                <div class="error-message" style="color: red;">
                    <%= request.getAttribute("emailExistsError") %>
                </div>
            <% } %>

            <!-- Submit Button -->
            <div class="form-group">
                <button type="submit" class="submit-btn">Sign Up</button>
            </div>
        </form>

        <div class="options">
            <p>Already have an account? <a href="signin.jsp" class="signin-link">Sign In</a></p>
        </div>
    </div>

    <%= HeaderFooterManager.getInstance().getFooter() %>

</body>
</html>

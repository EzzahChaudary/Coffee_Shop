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
            text-align: center;
            margin-bottom: 10px;
            font-size: 14px;
        }
    </style>
</head>

<body class="signup-page">
    <%= HeaderFooterManager.getInstance().getHeader() %>

    <div class="signup-container">
        <h3 class="signup">Sign Up</h3>
        
        <!-- Display Error Message if Set -->
        <% String error = (String) request.getAttribute("error"); %>
        <% if (error != null) { %>
            <p class="error-message"><%= error %></p>
        <% } %>

        <form id="signupForm" action="data.jsp" method="POST">
            <div class="form-group">
                <label for="username">Username</label>
                <input type="text" id="username" name="username" placeholder="Enter username" required>
                <small class="error-message"></small>
            </div>
            <div class="form-group">
                <label for="email">Email</label>
                <input type="email" id="email" name="email" placeholder="xyz@gmail.com" required>
                <small class="error-message"></small>
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" id="password" name="password" placeholder="Enter your password" required>
                <small class="error-message"></small>
            </div>
            <div class="form-group">
                <label for="confirmpassword">Confirm Password</label>
                <input type="password" id="confirm-password" name="confirmpassword" placeholder="Reenter your password" required>
                <small class="error-message"></small>
            </div>
            <button type="submit" class="submit-btn">Sign Up</button>
        </form>

        <!-- Link to Sign In page -->
        <div class="options">
            <p>Already have an account? <a href="signin.jsp" class="signin-link">Sign In</a></p>
        </div>
    </div>

    <%= HeaderFooterManager.getInstance().getFooter() %>

  <!-- The script should be placed here to ensure it runs after the DOM is fully loaded -->
<script>
    document.addEventListener("DOMContentLoaded", function () {
        // Attach the event listener to the form after the DOM is fully loaded
        document.getElementById("signupForm").addEventListener("submit", validateSignupForm);
    });

    async function validateSignupForm(event) {
        event.preventDefault(); // Prevent form submission for validation

        var username = document.getElementById("username").value.trim();
        var password = document.getElementById("password").value.trim();
        var confirmPassword = document.getElementById("confirm-password").value.trim();
        var email = document.getElementById("email").value.trim();

        var isValid = true;

        // Username validation
        var usernameError = document.querySelector("#username ~ .error-message");
        var usernameRegex = /^(?=.*[a-zA-Z])(?=.*\d)[a-zA-Z\d]{3,25}$/; // At least one alphabet, one number, and 3-25 characters
        if (!username.match(usernameRegex)) {
            usernameError.textContent = "Username must be 3-25 characters long and include both letters and numbers.";
            isValid = false;
        } else {
            usernameError.textContent = "";
        }

        // Email validation
        var emailError = document.querySelector("#email ~ .error-message");
        var emailPattern = /^[^ ]+@[^ ]+\.[a-z]{2,3}$/;
        if (!email.match(emailPattern)) {
            emailError.textContent = "Please enter a valid email address.";
            isValid = false;
        } else {
            emailError.textContent = "";
        }

        // Check if the email is already registered
        if (isValid) {
            isValid = await checkEmailAvailability(email);  // Call to the email check function
        }

        // Password validation
        var passwordError = document.querySelector("#password ~ .error-message");
        var passwordRegex = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@#$%^&*!])[A-Za-z\d@#$%^&*!]{8,}$/;
        if (!password.match(passwordRegex)) {
            passwordError.textContent = "Password must be at least 8 characters long and include an uppercase letter, a lowercase letter, a number, and a special character.";
            isValid = false;
        } else {
            passwordError.textContent = "";
        }

        // Confirm password validation
        var confirmPasswordError = document.querySelector("#confirm-password ~ .error-message");
        if (password !== confirmPassword) {
            confirmPasswordError.textContent = "Passwords do not match.";
            isValid = false;
        } else {
            confirmPasswordError.textContent = "";
        }

        // If valid, allow form submission
        if (isValid) {
            document.getElementById("signupForm").submit();
        }
    }


    async function checkEmailAvailability(email) {
    var emailError = document.querySelector("#email ~ .error-message");

    // Early exit if the email doesn't match a basic pattern
    var emailPattern = /^[^ ]+@[^ ]+\.[a-z]{2,3}$/;
    if (!email.match(emailPattern)) {
        emailError.textContent = "Please enter a valid email address.";
        return false; // Don't proceed if email is invalid
    }

    try {
        const response = await fetch('data.jsp?action=checkEmail', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/x-www-form-urlencoded'
            },
            body: `email=${encodeURIComponent(email)}`
        });

        const data = await response.json();
        console.log('Server Response:', data);  // Log the response for debugging

        if (data.exists) {
            emailError.textContent = data.message;
            return false; // Email already exists
        } else {
            emailError.textContent = data.message;
            return true; // Email is available
        }
    } catch (error) {
        console.error('Error checking email:', error);
        emailError.textContent = "Error checking email. Please try again later.";
        return false;
    }
}




</script>

</body>
</html>

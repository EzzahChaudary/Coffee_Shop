<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Coffee Shop - Sign Up</title>
    <link rel="stylesheet" href="style.css">
</head>

<body class="signup-page">
    <header>
        <div class="navbar">
            <h1 class="coffee-shop-logo">
                <img src="images/logo.png" alt="Coffee Shop Logo">
            </h1>
            <nav>
                <ul>
                    <li><a href="homepage.jsp">Home</a></li>
                    <li><a href="menu.jsp">Menu</a></li>
                    <li><a href="about.jsp">About Us</a></li>
                    <li><a href="contact.jsp">Contact</a></li>
                    <li><a href="signin.jsp">Sign In</a></li>
                    <li><a href="signup.jsp">Sign Up</a></li>
                </ul>
            </nav>
              <div class="search">
                <input class="srch" type="search" placeholder="Type to search">
                <button class="btn">Search</button>
            </div>
        </div>
    </header>

    <div class="signup-container">
        <h3>Sign Up</h3>
        <form action="#" method="POST" class="signup-form" id="signupForm">
            <div class="form-group">
                <label for="username">Username:</label>
                <input type="text" id="username" name="username" placeholder="Enter username" required>
                <small class="error-message"></small>
            </div>
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" placeholder="xyz@gmail.com" required>
                <small class="error-message"></small>
            </div>
            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" placeholder="Enter your password" required>
                <small class="error-message"></small>
            </div>
            <div class="form-group">
                <label for="confirm-password">Confirm Password:</label>
                <input type="password" id="confirm-password" name="confirm-password" placeholder="Reenter your password" required>
                <small class="error-message"></small>
            </div>
            <button type="submit" class="submit-btn">Sign Up</button>
        </form>

        <!-- Link to Sign In page -->
        <div class="options">
            <p>Already have an account? <a href="signin.jsp" class="signin-link">Sign In</a></p>
        </div>
    </div>

    <footer>
        <p>&copy; 2024 Coffee Shop. All rights reserved.</p>
        <a href="homepage.jsp" class="home-link">Return to Home</a>
    </footer>

    <script src="script.js"></script>
</body>
</html>





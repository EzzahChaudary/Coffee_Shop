<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Coffee Shop - Sign In</title>
    <link rel="stylesheet" href="style.css">
   
</head>
<!-- Add the signin-page class to the body tag -->
<body class="signin-page">
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

    <div class="signin-container">
        <h3>Sign In</h3>
        <form action="#" method="POST" class="signin-form">
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required placeholder="xyz@gmail.com">
                <small class="error-message"></small>
            </div>
            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required placeholder="Enter your password">
                <small class="error-message"></small>
            </div>
            <button type="submit" class="submit-btn">Sign In</button>
            <div class="options">
                <a href="#" class="forgot-password">Forgot Password?</a>
                <span> | </span>
                <a href="signup.jsp" class="signup-link">Sign Up</a>
            </div>
        </form>
    </div>

      <footer>
    <p>&copy; 2024 Coffee Shop. All rights reserved.</p>
    <a href="homepage.jsp" class="home-link">Return to Home</a>
</footer>

<script src="script.js"></script>
</body>
</html>
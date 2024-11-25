<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Coffee Shop - Home</title>
    <link rel="stylesheet" href="style.css">
</head>
<body class = "home-page">
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

    <main>
        <section id="home">
            <div class="content">
                <h2>Welcome to the Coffee Shop!</h2>
                <p>Explore our menu and enjoy the best coffee in town!</p>
                <button  a href = "menu.jsp"id="btn">Order Now</button>
            </div>
        </section>
    </main>

    <footer>
        <p>&copy; 2024 Coffee Shop. All rights reserved.</p>
        <a href="homepage.jsp" class="home-link">Return to Home</a>
    </footer>
</body>
</html>

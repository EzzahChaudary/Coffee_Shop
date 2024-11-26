<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="util.HeaderFooterManager" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Coffee Shop - Home</title>
    <link rel="stylesheet" href="style.css">

    <style>
  /* Reset */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Merriweather', serif;
}

/* Common Section Style */
.page-section {
    margin-top: 80px;
    padding-left: 80px;
}

/* Home Page Specific Background */
body.home-page {
    background-image: url('./images/bc4.jpg');
    background-repeat: no-repeat;
    background-size: cover;
    background-position: center;
    margin-bottom: 10px;
}


.btn:hover {
    background-color: #de9e73;
    border-color: #de9e73;
    color: #fff;
    transform: scale(1.05);
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
}

.btn:active {
    transform: scale(1.03);
}

/* Home Section */
#home {
    display: flex;
    align-items: center;
    justify-content: flex-start;
    width: 100%;
    height: 100vh ;
    background-image: url('./images/bc4.jpg');
    background-repeat: no-repeat;
    background-size: cover;
    background-position: center center;
    position: relative;
    padding-left: 80px;
}

/* Welcome Content Styling */
.content {
    color: #f7f3e9;
    max-width: 600px;
    text-align: left;
    z-index: 1;
    padding: 20px;
    font-family: 'Merriweather', serif;
}

/* Main Heading Styling */
.content h2 {
    font-size: 48px;
    margin-bottom: 20px;
    font-weight: 700;
    color: #ffedd5;
    text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
    letter-spacing: 1.5px;
}

/* Paragraph Styling */
.content p {
    font-size: 18px;
    line-height: 1.8;
    margin-bottom: 25px;
    color: #f7f3e9;
    text-shadow: 1px 1px 3px rgba(0, 0, 0, 0.3);
}

/* Button Styling for 'Order Now' */
#btn-on {
    padding: 8px 20px;
    background: #b2744c;
    color: #fff;
    font-weight: bold;
    font-size: 16px;
    border: 2px solid #ffedd5;
    border-radius: 5px;
    cursor: pointer;
    transition: 0.3s ease;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
    text-decoration: none;
}

#btn-on:hover {
    background: #de9e73;
    color: #fff;
    transform: scale(1.05);
    box-shadow: 0 6px 12px rgba(0, 0, 0, 0.4);
}

#btn-on:active {
    transform: scale(1.02);
    box-shadow: 0 3px 6px rgba(0, 0, 0, 0.2);
}

</style>
    

</head>
<body class="home-page">
    
  <!-- Include Header -->
    <%= HeaderFooterManager.getInstance().getHeader() %>


    <main>
        <section id="home">
            <div class="content">
                <h2>Welcome to the Coffee Shop!</h2>
                <p>Explore our menu and enjoy the best coffee in town!</p>
                <a href="menu.jsp" id="btn-on">Order Now</a>
            </div>
        </section>
    </main>

    <%= HeaderFooterManager.getInstance().getFooter() %>

</body>
</html>




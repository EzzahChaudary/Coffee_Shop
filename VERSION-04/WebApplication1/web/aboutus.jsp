<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="util.HeaderFooterManager" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us - Coffee Shop</title>
    <link rel="stylesheet" href="style.css">
    <style>
 /* Background for the About Us Page */
body.about-page {
    background-image: url('./images/image5.png');
    background-size: cover;
    background-position: center;
    min-height: 100vh; 
}

/* Main Content Styles */
.aboutusmain {
   margin:0;
    padding: 20px; 
    background-color: rgba(255, 255, 255, 0.9); 
    border-radius: 15px; /* Rounded corners for a softer look */
    box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2); /* Enhanced shadow for depth */
    max-width: 800px; 
    margin: 100px auto; 
    text-align: center; 
    transition: transform 0.3s ease; 
}

/* Scale effect on hover for the main content */
.aboutusmain:hover {
    transform: scale(1.02); /* Slightly scale up on hover */
}

/* Heading Styles */
.about-content .heading {
    font-size: 2.5em; /* Decreased heading size */
    color: #6F4C3E; /* Dark coffee brown */
    margin-bottom: 20px; /* Adjust margin for spacing */
    text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.3); /* Subtle text shadow for depth */
}

/* Subheading Styles */
.about-content .story,
.about-content .mission {
    font-size: 1.5em; /* Decreased subheading size */
    margin-top: 20px; /* Decrease top margin for spacing */
    color: #8B5A2B; /* Coffee brown shade for subheadings */
}

/* Paragraph Styles */
.about-content p {
    font-size: 1em; /* Decreased paragraph text size */
    color: #4B3D30; /* A darker coffee shade for paragraphs */
    line-height: 1.4; /* Improved readability with decreased line height */
    margin: 10px 0; /* Add margin for spacing */
}

/* Add a soft border around paragraphs for emphasis */
.about-content p {
    border-left: 3px solid #6F4C3E; /* Left border to highlight paragraphs */
    padding-left: 10px; /* Padding to separate text from border */
    transition: border-color 0.3s ease; /* Transition effect for border color */
}

/* Change border color on hover */
.about-content p:hover {
    border-color: #D2B48C; /* Change to a lighter brown on hover */
}
</style>
</head>
<body class="about-page">
 
    <%= HeaderFooterManager.getInstance().getHeader() %>
    <!-- Main About Us Content -->
    <main class = "aboutusmain">
        <section class="about-content">
            <h2 class="heading">Welcome to Our Coffee Shop</h2>
            <p>
                Established in the heart of the city, our coffee shop is more than just a place to grab a cup of coffee. 
                It’s a place where stories are shared, friendships are formed, and memories are made. We pride ourselves 
                on providing a warm, inviting atmosphere for all coffee lovers.
            </p>
            
            <h3 class="story">Our Story</h3>
            <p>
                It all started with a passion for quality coffee and a love for community. We wanted to create a space 
                where people could escape from the hustle and bustle, sit back, relax, and enjoy the simple pleasure 
                of a well-brewed coffee. From the beans we source to the baristas we train, every detail is crafted 
                to give you an unforgettable coffee experience.
            </p>
            
            <h3 class="mission">Our Mission</h3>
            <p>
                To deliver the best coffee experience, connecting people through our commitment to quality and community. 
                We believe that a coffee shop should be more than just a place to get caffeine – it should be a place of 
                warmth, comfort, and connection.
            </p>
        </section>
    </main>

    <!-- Footer -->
    <%= HeaderFooterManager.getInstance().getFooter() %>

</body>
</html>

    <%@page contentType="text/html" pageEncoding="UTF-8"%>
    <!DOCTYPE html>
    <html lang="en">
    <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us - Coffee Shop</title>
    <link rel="stylesheet" href="style.css">
    <style>
        /* Rectangle Bar Styling */
        .rectangle {
            width: 100%;
            height: 10px;
            background-color: #8B4513;
        }

        /* Center Content on Contact Page */
        .contact-page main {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            min-height: calc(100vh - 160px); /* Adjust to fit between header and footer */
            padding: 20px;
        }

        /* Square Contact Wrapper */
        .contact-wrapper {
            width: 90vw;
            max-width: 600px;
            aspect-ratio: 1 / 1;
            background-color: rgba(245, 222, 179, 0.95);
            padding: 20px;
            border-radius: 12px;
            box-shadow: 0 6px 15px rgba(0, 0, 0, 0.15);
            text-align: center;
            background-image: url('./images/image5.png');
            background-size: cover;
            background-position: center;
            color: #333;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
        }

        .contact-wrapper h2 {
            font-size: 2.5em;
            color: #F5F5DC;
            margin-bottom: 10px;
            text-shadow: 1px 1px 2px #000;
        }

        .contact-wrapper p {
            font-size: 1.1em;
            color: #F5F5DC;
            margin-bottom: 20px;
            text-shadow: 1px 1px 2px #000;
        }

        .contact-wrapper label {
            font-size: 1em;
            display: block;
            color: #F5F5DC;
            margin-top: 15px;
            text-align: left;
        }

        .contact-wrapper input, .contact-wrapper textarea {
            width: 100%;
            padding: 10px;
            font-size: 1em;
            margin: 10px 0;
            border: 1px solid #b2744c;
            border-radius: 4px;
            transition: border-color 0.3s ease;
        }
        .contact-wrapper input:focus, .contact-wrapper textarea:focus {
            border-color: #8B4513;
            outline: none;
        }

        .contact-wrapper button {
            font-size: 1em;
            padding: 10px 20px;
            background-color: #8B4513;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        .contact-wrapper button:hover {
            background-color: #F5F5DC;
            color: #8B4513;
        }

        /* Contact Details Styling */
        .contact-details {
            margin-top: 20px;
            color: #F5F5DC;
            text-align: center;
        }
        .contact-details h3 {
            margin: 5px 0;
            font-size: 1.2em;
        }
        .contact-details p {
            margin: 2px 0;
        }

        /* Footer Styling */
        footer {
            text-align: center;
            background-color: #8B4513;
            padding: 20px;
            color: #F5F5DC;
        }

        footer a {
            color: #F5F5DC;
            text-decoration: none;
        }
    </style>
    </head>
    <body class="contact-page">
   

    <!-- Rectangle under header -->
    <div class="rectangle"></div>

    <main>
        <div class="contact-wrapper">
            <h2>Contact Us</h2>
            <p>If you have any questions or feedback, feel free to reach out to us!</p>
            <form action="contact-submit.jsp" method="POST">
                <label for="name">Name:</label>
                <input type="text" id="name" name="name" required>
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required>
                <label for="message">Message:</label>
                <textarea id="message" name="message" required></textarea>
                <button type="submit">Send Message</button>
            </form>
            <!-- Move contact details inside the wrapper -->
            <div class="contact-details">
                <h3>Our Address</h3>
                <p>123 Coffee St., Brewtown, USA</p>
                <h3>Phone</h3>
                <p>(123) 456-7890</p>
                <h3>Email</h3>
                <p>info@coffeeshop.com</p>
            </div>
        </div>
    </main>

    <!-- Rectangle above footer -->
    <div class="rectangle"></div>

   
    </body>
    </html>

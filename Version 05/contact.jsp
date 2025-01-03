<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="util.HeaderFooterManager" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us - Coffee Shop</title>
    <link rel="stylesheet" href="style.css">
</head>
<style>
 
    
   /* Main Content */
.contact-us {
    max-width: 800px; 
    margin: 2rem auto; 
    padding: 1.5rem; 
    background-color: #fff;
    border-radius: 10px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

/* Other styles remain unchanged */


    .contact-info h1 {
        margin-bottom: 1rem;
        text-align: center;
        color: #6F4C3E;
        font-size: 50px;
    }

    .contact-info p {
        margin-bottom: 2rem;
        text-align: center;
        font-size: 1.2rem;
    }

    .info-cards {
        display: flex;
        flex-wrap: wrap;
        gap: 2rem;
    }

    .card {
        background-color: #ecf0f1;
        padding: 1.5rem;
        border-radius: 10px;
        text-align: center;
        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        flex: 1 1 calc(33.333% - 2rem);
        min-width: 250px;
    }

    .msg{
                text-align: center;
                margin-top: 10px;
    }
    .card h2 {
        color: #6F4C3E;
        margin-bottom: 0.5rem;
        
    }

    /* Contact Form */
    .contact-form h2 {
        margin-bottom: 1rem;
        color: #6F4C3E;
    }

    .form-group {
        margin-bottom: 1.5rem;
    }

    .form-group label {
        display: block;
        margin-bottom: 0.5rem;
    }

    .form-group input, .form-group textarea {
        width: 100%;
        padding: 0.75rem;
        border: 1px solid #ccc;
        border-radius: 5px;
        font-size: 1rem;
    }

    .form-group textarea {
        resize: none;
    }

    .btn {
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

    .btn:hover {
 background: #de9e73;
    color: #fff;
    transform: scale(1.05);
    box-shadow: 0 6px 12px rgba(0, 0, 0, 0.4);
    }

    .btn :active {
    transform: scale(1.02);
    box-shadow: 0 3px 6px rgba(0, 0, 0, 0.2);
}
    /* Responsive Design */
    @media (max-width: 768px) {
        .info-cards {
            flex-direction: column;
        }
    }
</style>
<body>
    <%= HeaderFooterManager.getInstance().getHeader() %>

    <main class="contact-us">
        <section class="contact-info">
            <h1>Contact Us</h1>
            <p>We’d love to hear from you! Drop us a message or visit us at our cozy café.</p>
            <div class="info-cards">
                <div class="card">
                    <h2>Address</h2>
                    <p>123 Coffee Lane, Brew City, USA</p>
                </div>
                <div class="card">
                    <h2>Phone</h2>
                    <p>(123) 456-7890</p>
                </div>
                <div class="card">
                    <h2>Email</h2>
                    <p>contact@coffeeshop.com</p>
                </div>
            </div>
        </section>
        <section class="contact-form">
            <h2 class = "msg" >Send Us a Message</h2>
            <form action="#" method="POST">
                <div class="form-group">
                    <label for="name">Name</label>
                    <input type="text" id="name" name="name" required>
                </div>
                <div class="form-group">
                    <label for="email">Email</label>
                    <input type="email" id="email" name="email" required>
                </div>
                <div class="form-group">
                    <label for="message">Message</label>
                    <textarea id="message" name="message" rows="5" required></textarea>
                </div>
                <button type="submit" class="btn">Send Message</button>
            </form>
        </section>
    </main>

    <%= HeaderFooterManager.getInstance().getFooter() %>
</body>
</html>

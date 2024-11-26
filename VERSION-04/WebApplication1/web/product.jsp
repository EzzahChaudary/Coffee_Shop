<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.net.URLDecoder" %>
<%@ page import="util.HeaderFooterManager" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">

    <title>Product Details</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f7f7f7;
        }

        .product-detail-container {
            max-width: 800px;
            margin: 50px auto;
            padding: 20px;
            background-color: white;
            border-radius: 8px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        .product-image img {
            max-width: 100%;
            height: auto;
            border-radius: 8px;
            object-fit: contain; /* Ensures image fits well */
        }

        .product-name {
            font-size: 24px;
            color: #4b2e1e;
            margin: 15px 0;
        }

        .product-price {
            font-size: 20px;
            color: #b2744c;
            margin: 10px 0;
        }

        .product-description {
            font-size: 16px;
            color: #555;
            margin: 15px 0;
        }

        .product-options {
            margin-top: 20px;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        .option-group {
            margin-bottom: 15px;
            width: 100%;
            max-width: 300px;
            text-align: left;
        }

        label {
            font-size: 16px;
            color: #4b2e1e;
            margin-bottom: 5px;
        }

        select, input[type="number"] {
            padding: 8px;
            border-radius: 5px;
            border: 1px solid #ccc;
            width: 100%;
            box-sizing: border-box;
        }

        .button-group {
            display: flex;
            justify-content: center;
            gap: 15px;
            margin-top: 20px;
        }

        .btn {
            display: inline-block;
            padding: 10px 20px;
            border: none;
            border-radius: 25px;
            font-size: 14px;
            cursor: pointer;
        }

        .btn.add-to-cart {
            background-color: #8B4513;
            color: white;
        }

        .btn.order-now {
            background-color: #D2B48C;
            color: white;
        }

        .btn:hover {
            transform: scale(1.05);
        }

       
     
    </style>
</head>

    <%= HeaderFooterManager.getInstance().getHeader() %>


<body>
    <div class="product-detail-container">
        <% 
            String name = request.getParameter("name");
            String price = request.getParameter("price");
            String image = request.getParameter("image");
            String description = URLDecoder.decode(request.getParameter("description"), "UTF-8");
        %>
        <div class="product-image">
            <img src="<%= image %>" alt="<%= name %>">
        </div>
        <h1 class="product-name"><%= name %></h1>
        <p class="product-price"><%= price %></p>
        <p class="product-description"><%= description %></p>
        
        <div class="product-options">
            <form action="cart.jsp" method="POST">
                <input type="hidden" name="name" value="<%= name %>">
                <input type="hidden" name="price" value="<%= price %>">

                <!-- Size Selector -->
                <div class="option-group">
                    <label for="size">Size:</label>
                    <select id="size" name="size">
                        <option value="Small">Small</option>
                        <option value="Medium">Medium</option>
                        <option value="Large">Large</option>
                    </select>
                </div>

                <!-- Coffee Blend Selector -->
                <div class="option-group">
                    <label for="coffee-blend">Coffee Blend:</label>
                    <select id="coffee-blend" name="coffee-blend">
                        <option value="Original">Original</option>
                        <option value="Dark Roast">Dark Roast</option>
                        <option value="De-caf">De-caf</option>
                    </select>
                </div>

                <!-- Quantity Selector -->
                <div class="option-group">
                    <label for="quantity">Qty:</label>
                    <input type="number" name="quantity" id="quantity" value="1" min="1">
                </div>

                <!-- Button Group for Add to Cart and Order Now -->
                <div class="button-group">
                    <button class="btn add-to-cart">Add to Cart</button>
                    <a href="order.jsp?name=<%= name %>&price=<%= price %>" class="btn order-now">Order Now</a>
                </div>
            </form>
        </div>
    </div>

    
    <%= HeaderFooterManager.getInstance().getFooter() %>


</body>
</html>

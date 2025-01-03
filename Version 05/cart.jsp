<%@ page import="util.Cart" %>
<%@ page import="java.util.*, java.net.URLEncoder" %>
<%@ page import="util.CartItem" %>
<%@ page import="java.util.List" %>
<%@ page import="util.CartController"%>
<%@ page import="util.HeaderFooterManager" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Coffee Shop - Cart</title>
    <link rel="stylesheet" href="style.css">
    <style>

        /* Cart Wrapper */
       .cartWrapper {
    max-width: 1200px;
    margin: 100px auto; /* Increased the top and bottom margin */
    background-color: white;
    border-radius: 8px;
    box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
    padding: 20px 30px;
}


        .h1 {
            text-align: center;
            margin-bottom: 20px;
        }

        p {
            text-align: center;
            font-size: 18px;
        }

        /* Cart Table */
        .cartTable {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }

        .cartTable thead th {
            background-color: #8B4513; /* Coffee brown */
            color: white;
            text-align: left;
            padding: 10px;
        }

        .cartTable tbody td {
            padding: 10px;
            border-bottom: 1px solid #ddd;
        }

        .cartTable img {
            border-radius: 8px;
        }

        /* Button Styling */
        form button {
            background-color: #8B4513;
            color: white;
            border: none;
            padding: 5px 10px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.2s ease;
        }

        form button:hover {
            background-color: #6F3C12;
            transform: translateY(-2px);
        }

        .checkout-button {
            display: block;
            font-size: 16px;
            border: none;
            padding: 10px 20px;
            border-radius: 20px;
            
            background-color: #D2B48C;
            color: white;
            cursor: pointer;
            margin: 20px auto;
            text-align: center;
            transition: background-color 0.3s ease, transform 0.2s ease;
        }

        .checkout-button:hover {
            background-color: #C1A57A;
            transform: scale(1.05);
        }

        /* Alert Styling */
        .alert {
            padding: 15px;
            margin-bottom: 20px;
            border: 1px solid transparent;
            border-radius: 4px;
            font-size: 16px;
        }

        .alert-success {
            color: #155724;
            background-color: #d4edda;
            border-color: #c3e6cb;
        }
    </style>
</head>
<body>
        <%= HeaderFooterManager.getInstance().getHeader() %>

 
        <main>
    <div class="main-content">
        <div class="cartWrapper">
            <%-- Display success message if available --%>
            <%
                String message = (String) request.getAttribute("message");
                if (message != null) {
            %>
            <div class="alert alert-success">
                <%= message %>
            </div>
            <% } %>

            <h1 class = "h1">Your Shopping Cart</h1>
            <%
                Cart cart = (Cart) session.getAttribute("cart");
                if (cart == null || cart.getItems().isEmpty()) {
                    out.println("<p>Your cart is empty.</p>");
                } else {
                    List<CartItem> items = cart.getItems();
            %>
            <table class="cartTable">
                <thead>
                    <tr>
                        <th>Image</th>
                        <th>Name</th>
                        <th>Price</th>
                        <th>Quantity</th>
                        <th>Total</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        for (CartItem item : items) {
                    %>
                    <tr>
                        <td><img src="<%= item.getImageUrl() %>" alt="<%= item.getName() %>" width="50"></td>
                        <td><%= item.getName() %></td>
                        <td>$ <%= item.getPrice() %></td>
                        <td><%= item.getQuantity() %></td>
                        <td>$ <%= item.getTotalPrice() %></td>
                        <td>
                            <form action="CartController" method="GET">
                                <input type="hidden" name="action" value="remove">
                                <input type="hidden" name="productId" value="<%= item.getProductId() %>">
                                <button type="submit">Remove</button>
                            </form>
                        </td>
                    </tr>
                    <%
                        }
                    %>
                </tbody>
            </table>

            <p><strong>Total: $ <%= cart.getTotal() %></strong></p>

            <form action="checkout.jsp" method="GET">
                <button class="checkout-button" type="submit">Checkout</button>
            </form>
            <%
                }
            %>
        </div>
    </div>
        </main>
                            <%= HeaderFooterManager.getInstance().getFooter() %>

</body>
</html>

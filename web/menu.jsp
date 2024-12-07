<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.util.*, java.net.URLEncoder" %>
<%@ page import="util.HeaderFooterManager" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Coffee Shop - Menu</title>
    <link rel="stylesheet" href="style.css">

    <style>
        /* --- Page Section --- */
        .page-section {
            background-image: url('./images/image5.png');
            background-size: cover;
            background-position: center;
            min-height: 100vh;
        }

        /* --- Product Gallery --- */
        #product-gallery {
            background-color: #ffffff;
            padding: 40px 20px;
            border-radius: 8px;
            box-shadow: 0px 2px 10px rgba(0, 0, 0, 0.1);
            margin: 20px auto;
            max-width: 1500px;
        }

        .section-heading-container {
            text-align: center;
            margin-bottom: 30px;
        }

        .section-heading {
            font-size: 36px;
            color: #4b2e1e; /* Coffee tone */
        }

        /* --- Product Grid --- */
        .product-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr)); /* Responsive layout */
            gap: 20px;
        }

        .product-block {
            background-color: #fff;
            border-radius: 8px;
            overflow: hidden;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2);
            transition: transform 0.3s ease;
            padding: 20px;
        }

        .product-block:hover {
            transform: scale(1.05);
        }

        .image-container {
            text-align: center;
            background-color: #f4f4f4;
            padding: 10px;
            border-radius: 8px;
        }

        .product-image {
            max-width: 100%;
            height: auto;
            object-fit: cover;
        }

        .product-info {
            text-align: center;
            margin-top: 15px;
        }

        .product-info .name {
            font-size: 18px;
            color: #4b2e1e; /* Coffee tone */
            font-weight: bold;
        }

        .product-info .price {
            color: #b2744c; /* Warm tone */
            font-size: 16px;
            margin: 10px 0;
        }

        /* --- Button Group --- */
        .button-group {
            display: flex;
            justify-content: center;
            gap: 10px;
            margin-top: 10px;
        }

        .btn {
            padding: 10px 15px;
            border: none;
            border-radius: 25px;
            font-size: 14px;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.3s ease;
        }

        .btn.add-to-cart {
            background-color: #8B4513;
            color: white;
        }

        .btn.add-to-cart:hover {
            background-color: #6F3C12;
            transform: translateY(-2px);
        }

        .btn.order-now {
            background-color: #D2B48C;
            color: white;
        }

        .btn.order-now:hover {
            background-color: #C1A57A;
            transform: translateY(-2px);
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .product-grid {
                grid-template-columns: repeat(auto-fit, minmax(150px, 1fr));
            }

            .section-heading {
                font-size: 28px;
            }
        }
    </style>
</head>
<body>
    <%= HeaderFooterManager.getInstance().getHeader() %>


    <main>
        <div class="page-section">
            <section id="product-gallery">
                <div class="section-heading-container">
                    <h2 class="section-heading">Explore Our Coffee Selections</h2>
                </div>
                <div class="product-grid">
                    <% 
                        String[][] products = {
                            {"Espresso", "$3.00", "images/c1.webp", "Rich and bold coffee shot."},
                            {"Cappuccino", "$4.50", "images/m5.png", "A perfect balance of espresso, steamed milk, and foam."},
                            {"Latte", "$4.00", "images/m2.png", "A creamy coffee delight with steamed milk."},
                            {"Mocha", "$4.75", "images/m3.jpg", "A chocolate-flavored variant of a latte."},
                            {"Flat White", "$4.25", "images/m4.png", "Smooth and velvety coffee."},
                            {"Black Coffee", "$4.25", "images/m8.png", "Pure coffee goodness, no frills."},
                            {"Cold Coffee", "$4.25", "images/m0.avif", "Chilled and refreshing coffee beverage."},
                            {"Caramel Latte", "$5.25", "images/m1.jpg", "Sweet caramel flavor combined with rich coffee."},
                        };

                        for (String[] product : products) {
                            String encodedDescription = URLEncoder.encode(product[3], "UTF-8");
                    %>
                    <div class="product-block">
                        <a href="product.jsp?name=<%= product[0] %>&price=<%= product[1] %>&image=<%= product[2] %>&description=<%= encodedDescription %>">
                            <div class="image-container">
                                <img src="<%= product[2] %>" alt="<%= product[0] %>" class="product-image">
                            </div>
                        </a>
                        <div class="product-info">
                            <h6 class="name"><%= product[0] %></h6>
                            <p class="price"><%= product[1] %></p>
                            <div class="button-group">
                                <form action="cart.jsp" method="POST">
                                    <input type="hidden" name="name" value="<%= product[0] %>">
                                    <input type="hidden" name="price" value="<%= product[1] %>">
                                    <button class="btn add-to-cart">Add to Cart</button>
                                </form>
                                <a href="order.jsp?name=<%= product[0] %>&price=<%= product[1] %>" class="btn order-now">Order Now</a>
                            </div>
                        </div>
                    </div>
                    <% } %>
                </div>
            </section>
        </div>
    </main>
    <%= HeaderFooterManager.getInstance().getFooter() %>

</body>
</html>

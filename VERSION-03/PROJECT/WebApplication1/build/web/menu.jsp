<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Coffee Shop - Menu</title>
    <link rel="stylesheet" href="style.css"> 
</head>
<body>
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
           <div class="page-section">
        <section id="product-gallery">
           <div class="section-heading-container">
<h2 class="section-heading">Explore Our Coffee Selections</h2>

            <div class="product-grid">
                <% 
                    List<Map<String, String>> products = new ArrayList<Map<String, String>>(); // Explicit type
                    Map<String, String> product1 = new HashMap<String, String>();
                    product1.put("name", "Espresso");
                    product1.put("price", "$3.00");
                    product1.put("image", "images/c1.webp");
                    products.add(product1);

                    Map<String, String> product2 = new HashMap<String, String>();
                    product2.put("name", "Cappuccino");
                    product2.put("price", "$4.50");
                    product2.put("image", "images/m5.png");
                    products.add(product2);

                    Map<String, String> product3 = new HashMap<String, String>();
                    product3.put("name", "Latte");
                    product3.put("price", "$4.00");
                    product3.put("image", "images/m2.png");
                    products.add(product3);

                    Map<String, String> product4 = new HashMap<String, String>();
                    product4.put("name", "Mocha");
                    product4.put("price", "$4.75");
                    product4.put("image", "images/m3.jpg");
                    products.add(product4);

                    Map<String, String> product5 = new HashMap<String, String>();
                    product5.put("name", "Flat White");
                    product5.put("price", "$4.25");
                    product5.put("image", "images/m4.png");
                    products.add(product5);
                    
                      Map<String, String> product6 = new HashMap<String, String>();
                    product6.put("name", "Black Coffee");
                    product6.put("price", "$4.25");
                    product6.put("image", "images/m8.png");
                    products.add(product6);
                    
                    Map<String, String> product7 = new HashMap<String, String>();
                    product7.put("name", "Cold Coffee");
                    product7.put("price", "$4.25");
                    product7.put("image", "images/m0.avif");
                    products.add(product7);
                    
                    Map<String, String> product8 = new HashMap<String, String>();
                    product8.put("name", "Caramel Latte");
                    product8.put("price", "$5.25");
                    product8.put("image", "images/m1.jpg");
                    products.add(product8);
                    
                    
                      Map<String, String> product9 = new HashMap<String, String>();
                    product9.put("name", "Flat White");
                    product9.put("price", "$4.25");
                    product9.put("image", "images/m4.png");
                    products.add(product9);
                    
                      Map<String, String> product10 = new HashMap<String, String>();
                    product10.put("name", "Black Coffee");
                    product10.put("price", "$4.25");
                    product10.put("image", "images/m8.png");
                    products.add(product10);
                    
                    Map<String, String> product11 = new HashMap<String, String>();
                    product11.put("name", "Cold Coffee");
                    product11.put("price", "$4.25");
                    product11.put("image", "images/m8.png");
                    products.add(product11);
                    
                    Map<String, String> product12 = new HashMap<String, String>();
                    product12.put("name", "Caramel Latte");
                    product12.put("price", "$5.25");
                    product12.put("image", "images/m1.jpg");
                    products.add(product12);

                    for (Map<String, String> product : products) {
                %>
                <div class="product-block">
                    <img src="<%= product.get("image") %>" alt="<%= product.get("name") %>" class="product-image">
                    <div class="product-info">
                        <h6 class = "name" ><%= product.get("name") %></h6>
                        <p class="price"><%= product.get("price") %></p>
                        <div class="button-group">
                            <button class="btn add-to-cart">Add to Cart</button>
                            <button class="btn order-now">Order Now</button>
                        </div>
                    </div>
                </div>
                <% } %>
            </div>
            </div>
        </section>
           </div>
    </main>
</body>
</html>

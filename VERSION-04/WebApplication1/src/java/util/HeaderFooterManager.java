
package util;

public class HeaderFooterManager {
    // Static instance for Singleton pattern
    private static HeaderFooterManager instance;

    // Private constructor to prevent instantiation
    private HeaderFooterManager() {}

    // Get the single instance of HeaderFooterManager
    public static HeaderFooterManager getInstance() {
        if (instance == null) {
            instance = new HeaderFooterManager();
        }
        return instance;
    }

    // Method to get header HTML content
    public String getHeader() {
        return "<header>\n" +
               "    <div class=\"navbar\">\n" +
               "        <h1 class=\"coffee-shop-logo\">\n" +
               "            <img src=\"images/logo.png\" alt=\"Coffee Shop Logo\">\n" +
               "        </h1>\n" +
               "        <nav>\n" +
               "            <ul>\n" +
               "                <li><a href=\"homepage.jsp\">Home</a></li>\n" +
               "                <li><a href=\"menu.jsp\">Menu</a></li>\n" +
               "                <li><a href=\"aboutus.jsp\">About Us</a></li>\n" +
               "                <li><a href=\"contact.jsp\">Contact</a></li>\n" +
               "                <li><a href=\"cart.jsp\">Cart</a></li>\n" +
               "                <li><a href=\"signin.jsp\">Sign In</a></li>\n" +
               "                <li><a href=\"signup.jsp\">Sign Up</a></li>\n" +
               "            </ul>\n" +
               "        </nav>\n" +
               "    </div>\n" +
               "</header>\n";
    }

    // Method to get footer HTML content
    public String getFooter() {
        return "<footer>\n" +
               "    <p>&copy; 2024 Coffee Shop. All rights reserved.</p>\n" +
               "    <a href=\"homepage.jsp\" class=\"home-link\">Return to Home</a>\n" +
               "</footer>\n";
    }
}

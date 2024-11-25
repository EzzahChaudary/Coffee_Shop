package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;

public final class menu_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"UTF-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    <title>Coffee Shop - Menu</title>\n");
      out.write("    <link rel=\"stylesheet\" href=\"style.css\"> \n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("    <header>\n");
      out.write("        <div class=\"navbar\">\n");
      out.write("            <h1 class=\"coffee-shop-logo\">\n");
      out.write("                <img src=\"images/logo.png\" alt=\"Coffee Shop Logo\">\n");
      out.write("            </h1>\n");
      out.write("            <nav>\n");
      out.write("                <ul>\n");
      out.write("                    <li><a href=\"homepage.jsp\">Home</a></li>\n");
      out.write("                    <li><a href=\"menu.jsp\">Menu</a></li>\n");
      out.write("                    <li><a href=\"about.jsp\">About Us</a></li>\n");
      out.write("                    <li><a href=\"contact.jsp\">Contact</a></li>\n");
      out.write("                    <li><a href=\"signin.jsp\">Sign In</a></li>\n");
      out.write("                    <li><a href=\"signup.jsp\">Sign Up</a></li>\n");
      out.write("                </ul>\n");
      out.write("            </nav>\n");
      out.write("            <div class=\"search\">\n");
      out.write("                <input class=\"srch\" type=\"search\" placeholder=\"Type to search\">\n");
      out.write("                <button class=\"btn\">Search</button>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </header>\n");
      out.write("\n");
      out.write("    <main>\n");
      out.write("           <div class=\"page-section\">\n");
      out.write("        <section id=\"product-gallery\">\n");
      out.write("           <div class=\"section-heading-container\">\n");
      out.write("<h2 class=\"section-heading\">Explore Our Coffee Selections</h2>\n");
      out.write("\n");
      out.write("            <div class=\"product-grid\">\n");
      out.write("                ");
 
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
                
      out.write("\n");
      out.write("                <div class=\"product-block\">\n");
      out.write("                    <img src=\"");
      out.print( product.get("image") );
      out.write("\" alt=\"");
      out.print( product.get("name") );
      out.write("\" class=\"product-image\">\n");
      out.write("                    <div class=\"product-info\">\n");
      out.write("                        <h6 class = \"name\" >");
      out.print( product.get("name") );
      out.write("</h6>\n");
      out.write("                        <p class=\"price\">");
      out.print( product.get("price") );
      out.write("</p>\n");
      out.write("                        <div class=\"button-group\">\n");
      out.write("                            <button class=\"btn add-to-cart\">Add to Cart</button>\n");
      out.write("                            <button class=\"btn order-now\">Order Now</button>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                ");
 } 
      out.write("\n");
      out.write("            </div>\n");
      out.write("            </div>\n");
      out.write("        </section>\n");
      out.write("           </div>\n");
      out.write("    </main>\n");
      out.write("</body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}

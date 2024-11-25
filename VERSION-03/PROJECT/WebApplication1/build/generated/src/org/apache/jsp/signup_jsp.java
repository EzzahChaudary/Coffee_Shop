package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class signup_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"UTF-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    <title>Coffee Shop - Sign Up</title>\n");
      out.write("    <link rel=\"stylesheet\" href=\"style.css\">\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body class=\"signup-page\">\n");
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
      out.write("        </div>\n");
      out.write("    </header>\n");
      out.write("\n");
      out.write("    <div class=\"signup-container\">\n");
      out.write("        <h2>Sign Up</h2>\n");
      out.write("        <form action=\"#\" method=\"POST\" class=\"signup-form\" id=\"signupForm\">\n");
      out.write("            <div class=\"form-group\">\n");
      out.write("                <label for=\"username\">Username:</label>\n");
      out.write("                <input type=\"text\" id=\"username\" name=\"username\" placeholder=\"Enter username\" required>\n");
      out.write("                <small class=\"error-message\"></small>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"form-group\">\n");
      out.write("                <label for=\"email\">Email:</label>\n");
      out.write("                <input type=\"email\" id=\"email\" name=\"email\" placeholder=\"xyz@gmail.com\" required>\n");
      out.write("                <small class=\"error-message\"></small>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"form-group\">\n");
      out.write("                <label for=\"password\">Password:</label>\n");
      out.write("                <input type=\"password\" id=\"password\" name=\"password\" placeholder=\"Enter your password\" required>\n");
      out.write("                <small class=\"error-message\"></small>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"form-group\">\n");
      out.write("                <label for=\"confirm-password\">Confirm Password:</label>\n");
      out.write("                <input type=\"password\" id=\"confirm-password\" name=\"confirm-password\" placeholder=\"Reenter your password\" required>\n");
      out.write("                <small class=\"error-message\"></small>\n");
      out.write("            </div>\n");
      out.write("            <button type=\"submit\" class=\"submit-btn\">Sign Up</button>\n");
      out.write("        </form>\n");
      out.write("\n");
      out.write("        <!-- Link to Sign In page -->\n");
      out.write("        <div class=\"options\">\n");
      out.write("            <p>Already have an account? <a href=\"signin.jsp\" class=\"signin-link\">Sign In</a></p>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("    <footer>\n");
      out.write("        <p>&copy; 2024 Coffee Shop. All rights reserved.</p>\n");
      out.write("        <a href=\"homepage.jsp\" class=\"home-link\">Return to Home</a>\n");
      out.write("    </footer>\n");
      out.write("\n");
      out.write("    <script src=\"script.js\"></script>\n");
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

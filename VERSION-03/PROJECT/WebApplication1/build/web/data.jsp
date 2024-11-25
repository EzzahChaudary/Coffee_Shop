

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%@page import ="java.sql.*,java.util.*"%>
       <%
        String Username = request.getParameter("username");
        String Email = request.getParameter("email");
      String Password = request.getParameter("password");
      String ConfirmPassword = request.getParameter("confirmpassword");

      try{
Class.forName("com.mysql.cj.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Signupdata", "root", "");
      Statement st = conn.createStatement();
int i = st.executeUpdate("INSERT INTO Customerdata (Username, Email, Password, ConfirmPassword) VALUES ('" + Username + "', '" + Email + "', '" + Password + "', '" + ConfirmPassword + "')");
      
      out.println("Data Inserted Succesfully");
      
      }
      catch(Exception e)
      {
      System.out.print(e);
      e.printStackTrace();
      }
     
%>

  
    </body>
</html>
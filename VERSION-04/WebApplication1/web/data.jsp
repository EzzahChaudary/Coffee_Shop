<%@ page import="java.sql.*, util.DatabaseConnection" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>

<%
    // Retrieve form data
    String username = request.getParameter("username");
    String email = request.getParameter("email");
    String password = request.getParameter("password");

    if (username != null && email != null && password != null) {
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;

        try {
            // Get the database connection from the singleton DatabaseConnection class
            conn = DatabaseConnection.getInstance().getConnection();

            // Check if the email already exists
            String checkEmailSQL = "SELECT * FROM users WHERE email = ?";
            stmt = conn.prepareStatement(checkEmailSQL);
            stmt.setString(1, email);
            rs = stmt.executeQuery();

            // Log the SQL query to see if it’s being prepared correctly
            System.out.println("Executing query: " + checkEmailSQL);

            if (rs.next()) {
                out.println("<p>Error: An account with this email already exists. Please use a different email.</p>");
            } else {
                // Email doesn't exist, proceed with inserting new user
                String insertSQL = "INSERT INTO users (username, email, password) VALUES (?, ?, ?)";
                stmt = conn.prepareStatement(insertSQL);
                stmt.setString(1, username);
                stmt.setString(2, email);
                stmt.setString(3, password);

                // Log the insert query to ensure it's correct
                System.out.println("Executing query: " + insertSQL);

                int rowsInserted = stmt.executeUpdate();
                if (rowsInserted > 0) {
                    out.println("<p>Signup successful! <a href='signin.jsp'>Click here to Sign In</a>.</p>");
                } else {
                    out.println("<p>Signup failed. Try again.</p>");
                }
            }
        } catch (SQLException e) {
            // Output the error message and log the exception
            out.println("<p>Error checking email: " + e.getMessage() + "</p>");
            e.printStackTrace();  // This will print detailed error information in the server logs
        } finally {
            try {
                if (rs != null) rs.close();
                if (stmt != null) stmt.close();
                if (conn != null) conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    } else {
        out.println("<p>All fields are required!</p>");
    }
%>    

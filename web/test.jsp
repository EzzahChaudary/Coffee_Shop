<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Test Database Connection</title>
</head>
<body>
    <h1>Database Connection Test</h1>
    <%
        // Define test credentials
        String dbURL = "jdbc:mysql://localhost:3306/db"; // Replace 'db' with your database name
        String dbUser = "root"; // Replace with your database username
        String dbPassword = ""; // Replace with your database password (if any)

        Connection conn = null;
        try {
            out.println("<p>Loading JDBC Driver...</p>");
            Class.forName("com.mysql.jdbc.Driver"); // Load MySQL JDBC driver

            out.println("<p>Connecting to Database...</p>");
            conn = DriverManager.getConnection(dbURL, dbUser, dbPassword);

            if (conn != null) {
                out.println("<p>Connection successful!</p>");
            } else {
                out.println("<p>Failed to connect to the database.</p>");
            }
        } catch (Exception e) {
            out.println("<p>Error: " + e.getMessage() + "</p>");
            
        } finally {
            try {
                if (conn != null) conn.close(); // Close the connection
            } catch (SQLException e) {
                out.println("<p>Error closing connection: " + e.getMessage() + "</p>");
            }
        }
    %>
</body>
</html>

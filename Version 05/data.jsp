<%@page import="java.sql.*, util.DatabaseConnection"%>

<%
    // Retrieve form inputs
    String username = request.getParameter("username");
    String email = request.getParameter("email");
    String password = request.getParameter("password");
    String confirmPassword = request.getParameter("confirmpassword");

    // Error messages for each field
    String usernameError = null ;
    String emailError = null ;
    String passwordError = null;
    String confirmPasswordError = null;
    String emailExistsError = null;

// Set error messages if validations fail
if (username == null || !username.matches("^(?=.*[a-zA-Z])(?=.*\\d)[a-zA-Z\\d]{3,25}$")) {
    usernameError = "Username must be 3-25 characters long and include both letters and numbers.";
}
if (email == null || !email.matches("^[^ ]+@[^ ]+\\.[a-z]{2,3}$")) {
    emailError = "Please enter a valid email address.";
}

// Pass errors back to the request
request.setAttribute("usernameError", usernameError);
request.setAttribute("emailError", emailError);

    // 3. Validate Password
    if (password == null || !password.matches("^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)(?=.*[@#$%^&*!])[A-Za-z\\d@#$%^&*!]{8,}$")) {
        passwordError = "Password must be at least 8 characters long and include an uppercase letter, a lowercase letter, a number, and a special character.";
    }

    // 4. Validate Confirm Password
    if (!password.equals(confirmPassword)) {
        confirmPasswordError = "Passwords do not match.";
    }

    // 5. Check if Email Already Exists
    if (emailExistsError == null) {
        try {
            // Use the singleton DatabaseConnection to get a connection
            DatabaseConnection dbConnection = DatabaseConnection.getInstance();
            Connection conn = dbConnection.getConnection();

            // Check if the email already exists
            String checkEmailQuery = "SELECT COUNT(*) FROM users WHERE email = ?";
            PreparedStatement ps = conn.prepareStatement(checkEmailQuery);
            ps.setString(1, email);
            ResultSet rs = ps.executeQuery();

            if (rs.next() && rs.getInt(1) > 0) {
                emailExistsError = "This email is already registered. Please use another email or sign in.";
            } else {
                // If everything is valid, insert user into the database
                String insertQuery = "INSERT INTO users (username, email, password) VALUES (?, ?, ?)";
                PreparedStatement insertStmt = conn.prepareStatement(insertQuery);
                insertStmt.setString(1, username);
                insertStmt.setString(2, email);
                insertStmt.setString(3, password);
                insertStmt.executeUpdate();

                // Redirect to a success page or homepage
                response.sendRedirect("homepage.jsp?signup=success");
                return;
            }
        } catch (SQLException e) {
            emailExistsError = "Database error: " + e.getMessage();
        } catch (Exception e) {
            emailExistsError = "Error: " + e.getMessage();
        }
    }

    // Set error messages as request attributes
    request.setAttribute("usernameError", usernameError);
    request.setAttribute("emailError", emailError);
    request.setAttribute("passwordError", passwordError);
    request.setAttribute("confirmPasswordError", confirmPasswordError);
    request.setAttribute("emailExistsError", emailExistsError);

    // Forward to the signup page with errors
    if (usernameError != null || emailError != null || passwordError != null || confirmPasswordError != null || emailExistsError != null) {
        request.getRequestDispatcher("signup.jsp").forward(request, response);
    }
%>

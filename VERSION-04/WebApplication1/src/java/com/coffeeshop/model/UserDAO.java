/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.coffeeshop.model;


import util.DatabaseConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDAO {

    public boolean validateUser(String email, String password) {
        boolean isValid = false;

        try {
            // Get the connection from the DatabaseConnection singleton
            Connection conn = DatabaseConnection.getInstance().getConnection();

            String query = "SELECT * FROM users WHERE email = ? AND password = ?";
            PreparedStatement pstmt = conn.prepareStatement(query);
            pstmt.setString(1, email);
            pstmt.setString(2, password);

            ResultSet rs = pstmt.executeQuery();
            isValid = rs.next(); // True if a matching record is found

            rs.close();
            pstmt.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return isValid;
    }
}

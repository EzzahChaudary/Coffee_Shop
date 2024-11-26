/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package util;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class TestDatabaseConnection {
    public static void main(String[] args) {
        String dbURL = "jdbc:mysql://localhost:3306/coffee_shop";
        String dbUser = "root";
        String dbPassword = "";
        Connection conn = null;

        try {
            conn = DriverManager.getConnection(dbURL, dbUser, dbPassword);
            if (conn != null) {
                System.out.println("Connection successful!");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (conn != null) conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}


package cydeo.jdbctests.Day1;

import org.junit.jupiter.api.Test;

import java.sql.*;

public class PO1_JDBCIntro {

//CONNECTION STRING
    String dbUrl = "jdbc:oracle:thin:@54.89.119.143:1521:XE";
    String dbUsername = "hr";
    String dbPassword = "hr";

    @Test
    public void task1() throws SQLException {

        //Create the connection
        //DriverManager class get connection Method will help connect database
        Connection conn = DriverManager.getConnection(dbUrl,dbUsername,dbPassword);

        Statement statement = conn.createStatement();
        //ResultSet will store data after execution(It only stores data without a table)
        ResultSet rs = statement.executeQuery("select * from DEPARTMENTS where MANAGER_ID is not null");

        //1G-Administration-200-1700
        while(rs.next()){
            System.out.println(rs.getString(1) + " - " + rs.getString(2) + " - " + rs.getString(3) + " - " + rs.getString(4));
        }
// Can we run another query in the same connection? - YES

        System.out.println("----------------------------------------------");

        rs = statement.executeQuery("select * from LOCATIONS");
//1297 Via Cola di Rie - Roma
        while (rs.next()) {
            System.out.println(rs.getString(2) + " - " + rs.getString(4));
        }
        //close connection
        rs.close();
        statement.close();
        conn.close();

    }
}

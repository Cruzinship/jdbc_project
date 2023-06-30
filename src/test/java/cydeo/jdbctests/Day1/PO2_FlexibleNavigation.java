package cydeo.jdbctests.Day1;

import org.junit.jupiter.api.Test;

import java.sql.*;

public class PO2_FlexibleNavigation {
    //CONNECTION STRING
    String dbUrl = "jdbc:oracle:thin:@54.89.119.143:1521:XE";
    String dbUsername = "hr";
    String dbPassword = "hr";

    @Test
    public void task2() throws SQLException {
        Connection conn = DriverManager.getConnection(dbUrl, dbUsername, dbPassword);
        Statement statement = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);

        ResultSet rs = statement.executeQuery("select FIRST_NAME, LAST_NAME from EMPLOYEES");
        //first row
        rs.next();
        System.out.println(rs.getString(1) + " - " + rs.getString(2));

        //second row
        rs.next();
        System.out.println(rs.getString(1) + " - " + rs.getString(2));

        //what if I want to get last row data ?
        // last method
        //ResultSet.TYPE_SCROLL_INSENSITIVE --> to do flexible navigation between rows
        // ResultSet.CONCUR_READ_ONLY --? do not update anything from database, only read
        rs.last();
        System.out.println(rs.getString(1) + " - " + rs.getString(2));
        //how many rows we have (last + getRow)
        int rowNumber = rs.getRow();// the current row number; 0 if there is no current row
        System.out.println("rowNumber = " + rowNumber);

        System.out.println("------ABSOLUTE----------");
        rs.absolute(46); //ture if the cursor moved to a position in this ResultSet object; false if the cursor cannot
        System.out.println(rs.getString(1) + " - " + rs.getString(2)); // Alexander Hunold

        System.out.println("------PREVIOUS-------");
        rs.previous();
        System.out.println(rs.getString(1) + " - " + rs.getString(2)); // Goy Himuro


        //print the whole table
        rs.first();// jump to the first
        rs.beforeFirst(); // jump into before the first row
        System.out.println("----------------PRINTING TABLE----------------------------");
        while (rs.next()) {
            System.out.println(rs.getString(1) + " - " + rs.getString(2));
        }


        rs.close();
        statement.close();
        conn.close();
    }
}

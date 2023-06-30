package cydeo.jdbctests;

import java.sql.*;

public class TestOracleConnection {
    public static void main(String[] args) throws SQLException {
        // CONNECTION STRING
        String dbUrl = "jdbc:oracle:thin:@54.89.119.143:1521:XE";
        String dbUsername = "hr";
        String dbPassword = "hr";

        //Create the connection
        //DriverManager class get connection Method will help connect database
       Connection conn = DriverManager.getConnection(dbUrl,dbUsername,dbPassword);

       Statement statement = conn.createStatement();
      //ResultSet will store data after execution(It only stores data without a table)
       ResultSet rs = statement.executeQuery("select * from DEPARTMENTS");

/*
       //SETTING DATA
        rs.next();
        System.out.println("---------------FIRST ROW----------------");
        //right now pointer is in the first row

        //How to get data from first row
        //rs.getInt(index) --> this method returns integer, Index start from 1 in SQL. It refers column position
        System.out.println(rs.getInt(1));
        //get the Europe = region name
        System.out.println(rs.getString(2));

        //same information as we cna get with columnLabel
        System.out.println(rs.getInt("REGION_ID"));
        System.out.println(rs.getString("REGION_NAME"));

        //GET ME second row result in following format: 2 - Americas
        rs.next();
        System.out.println("---------------SECOND ROW----------------");
        System.out.println(rs.getInt(1) + " - " + rs.getString(2));

        System.out.println("------------THIRD ROW----------------");
        rs.next();
        System.out.println(rs.getInt("REGION_ID")+ " - " + rs.getString("REGION_NAME"));

        System.out.println("------------FOURTH ROW----------------");
        rs.next();
        System.out.println(rs.getInt("REGION_ID")+ " - " + rs.getString("REGION_NAME"));


 */
//what if we have 100 rows, we want to print first and second column
        while(rs.next()){
            System.out.println(rs.getInt(1)+ " - " + rs.getString(2) + " - " + rs.getString(3));
        }


        //close connection
        rs.close();
        statement.close();
        conn.close();

    }
}

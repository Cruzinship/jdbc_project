package cydeo.jdbctests.Day2;

import cydeo.jdbctests.utility.DB_Util;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;

public class PO_Library_Test {
    // Create connection to MySQL Database
    String url = "jdbc:mysql://34.230.35.214:3306/library2";
    String username =  "library2_client";
    String password =  "6s2LQQTjBcGFfDhY";

    @Test
    public void task1(){
        //create connection
        DB_Util.createConnection(url,username,password);

        //run query
        DB_Util.runQuery("select count(*) from books");

        String expectedBooksCount = DB_Util.getFirstRowFirstColumn();

        System.out.println(expectedBooksCount);

        /*
            Actual comes from UI with Selenium, cucumber etc.
         */
        String actualBooksCount = "6274";

        Assertions.assertEquals(expectedBooksCount, actualBooksCount);

        DB_Util.destroy();


    }
}

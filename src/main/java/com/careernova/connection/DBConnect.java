
package com.careernova.connection;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {

    private static Connection con = null;

    public static Connection getCon() {

        try {

            // Connection nahi hai ya closed hai
            if (con == null || con.isClosed()) {

                Class.forName(DBInfo.driver);

                con = DriverManager.getConnection(
                        DBInfo.dbUrl,
                        DBInfo.dbUname,
                        DBInfo.dbPwd
                );

                System.out.println("Database Connection Created Successfully");

            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return con;
    }

    // Agar project me kahin getConnection() use ho raha hai
    // to ye bhi same connection return karega
    public static Connection getConnection() {
        return getCon();
    }
}

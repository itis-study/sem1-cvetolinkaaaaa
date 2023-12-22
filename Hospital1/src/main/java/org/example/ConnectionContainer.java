package org.example;

import lombok.SneakyThrows;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionContainer {
    private static Connection connection;

    @SneakyThrows
    public  static Connection getConnection(){
        if (connection == null || connection.isClosed()){
            connection = DriverManager.getConnection("jdbc:postgresql://localhost:5432/Hospital",
                    "postgres","postgres");
            return connection;
        } else {
            return connection;
        }
    }
}
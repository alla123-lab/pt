package Metier;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class SingletonConnection {
private static Connection connection;
	static {
		try {
			Class.forName("com.mysql.jdbc.Driver");
                        System.out.println("ko");
			connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/etudiants","root","");
                        System.out.println("ok connexion");
		} catch (ClassNotFoundException | SQLException e) {
                     System.out.println("execption de connixion");
		}
	}
	public static Connection getConnection() {
		return connection;
        }
}
package alwaysfree;

import java.sql.*;

public class DBConnecter {
	
	static Connection connection = null;
	
	public static Connection getConnection() {
		System.out.println("sdfsdf");
		try {
			Class.forName("org.postgresql.Driver");
			connection = DriverManager.getConnection("jdbc:postgresql://localhost:5433/alwaysfree", "postgres", "ch3coona");
			System.out.println("sdfsdf");
		} catch(Exception e) {
			System.out.println(e);
		}
		
		return connection;
		
	}
	
	
	

}

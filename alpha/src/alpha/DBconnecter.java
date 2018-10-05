package alpha;

import java.sql.*;

public class DBconnecter {
	
	static Connection connection = null;
	
	public static Connection getConnection() {
		
		try {
			Class.forName("org.postgresql.Driver");
			connection = DriverManager.getConnection("jdbc:postgresql://localhost:5433/form", "postgres", "ch3coona");
		} catch(Exception e) {
			System.out.println(e);
		}
		
		return connection;
		
	}
	
	
	

}

package connection;

import java.sql.Connection;
import java.sql.DriverManager;

public class Connect {
	
	public static void main(String[] args) {
		
		Connection connection = null;
		
		try {
			
			connection = DriverManager.getConnection("jdbc:postgresql://localhost:5433/form", "postgres", "ch3coona");
			
			System.out.println("connected");
			
		} catch(Exception e) {
			System.out.println("fail");
		}
	}

}

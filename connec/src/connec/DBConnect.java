package connec;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		Connection connection = null;

		try {

			connection = DriverManager.getConnection("jdbc:postgresql://localhost:5433/form", "postgres", "ch3coona");

			System.out.println("connected");

		} catch(Exception e) {
			System.out.println("fail");
		}


	}

}

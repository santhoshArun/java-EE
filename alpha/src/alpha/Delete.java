package alpha;

import java.sql.*;

public class Delete {
	
	static Connection connection = null;
	static PreparedStatement statement = null;
	
	public static int deleteUser(String user) {
		int status = 0;
		
		try {
			connection = DBconnecter.getConnection();
			statement = connection.prepareStatement("DELETE FROM login WHERE username = ?");
			statement.setString(1, user);
			status = statement.executeUpdate();
			connection.close();
		} catch(Exception e) {
			System.out.println(e);
		}		
		return status;
	}

}

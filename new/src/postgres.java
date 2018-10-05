import java.sql.*;

public class postgres {
	
	public static void main(String[] args) throws Exception {
		int ind = 0;
		Connection c = null;
		Statement s = null;
		c = DriverManager.getConnection("jdbc:postgresql://localhost:5433/newdb", "postgres", "ch3coona");
		if(c != null) {
			System.out.println("conected...");
		} else {
			System.out.println("failed...");
		}
		s = c.createStatement();
		
		String sql = "UPDATE sample SET index = " + ind + "WHERE index = 45";
		
		s.executeUpdate(sql);
		
		String sqs = "SELECT * FROM sample";
		ResultSet rs = s.executeQuery(sqs);
		while(rs.next()) {
			int index = rs.getInt("index");
			System.out.println(index);
		}
		rs.close();
		s.close();
		c.close();
	}
}
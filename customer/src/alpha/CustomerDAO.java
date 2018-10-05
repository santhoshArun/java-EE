package alpha;
import java.sql.*;
public class CustomerDAO {
	
	static Connection conn;
	static PreparedStatement pst;
	
	public static int insertCustomer(CustomerBean u) {
		int status = 0;
		try {
			conn = ConnectionProvider.getCon();
			pst = conn.prepareStatement("insert into customer values(?,?)");
			pst.setInt(1, u.getCustid());
			pst.setString(2, u.getCustname());
			status = pst.executeUpdate();
			conn.close();
		} catch(Exception e) {
			System.out.println(e);
		}
		return status;
	}

}

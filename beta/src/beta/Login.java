package beta;

import java.sql.*;

//import javax.xml.bind.DatatypeConverter;
//import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class Login {
	
	static Connection connection = null;
	static PreparedStatement statement = null;
	
	public static boolean checkLogin(Bean obj) throws NoSuchAlgorithmException {
		boolean status = false;
		//MessageDigest messagedigest = MessageDigest.getInstance("MD5");
		try {
			
			connection = DBconnecter.getConnection();
			statement = connection.prepareStatement("SELECT * FROM login");
			
			ResultSet rs = statement.executeQuery();
			//byte[] bihash = messagedigest.digest(obj.getPassword().getBytes());
			//String hash = DatatypeConverter.printHexBinary(bihash);
			
			while(rs.next()) {
				String u = rs.getString(2);
				String d = rs.getString(1);
				String p = rs.getString(3);
				
				if(obj.getUsername().equals(u) && obj.getPassword().equalsIgnoreCase(p) && obj.getDevicename().equals(d)) {
					status = true;
				}
			}
			
		} catch(Exception e) {
			System.out.println(e.getMessage());
		}
		
		return status;
	}

}

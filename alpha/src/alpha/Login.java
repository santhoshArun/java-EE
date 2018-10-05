package alpha;

import java.sql.*;

import javax.xml.bind.DatatypeConverter;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class Login {
	
	static Connection connection = null;
	static PreparedStatement statement = null;
	
	public static boolean checkLogin(Bean obj) throws NoSuchAlgorithmException {
		boolean status = false;
		MessageDigest messagedigest = MessageDigest.getInstance("SHA-256");
		try {
			
			connection = DBconnecter.getConnection();
			statement = connection.prepareStatement("SELECT * FROM login");
			
			ResultSet rs = statement.executeQuery();
			byte[] bihash = messagedigest.digest(obj.getPassword().getBytes());
			String hash = DatatypeConverter.printHexBinary(bihash);
			while(rs.next()) {
				if(obj.getUsername().equals(rs.getString(2)) && hash.equals(rs.getString(3)) && obj.getDevicename().equals(rs.getString(1))) {
					status = true;
				}
			}
			
		} catch(Exception e) {
			System.out.println("error");
		}
		
		return status;
	}

}

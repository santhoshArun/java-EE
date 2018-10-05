package beta;

import java.sql.*;
//import javax.xml.bind.DatatypeConverter;
//import java.security.MessageDigest;

public class Update {
	
	static Connection connection = null;
	static PreparedStatement statement = null;
	
	public static int updateDevice(Bean b, String user) {
		
		int status = 0;
		String updatedevicename;
		
		try {
			
			connection = DBconnecter.getConnection();
			statement = connection.prepareStatement("UPDATE login SET devicename = ? WHERE username = ?");
			updatedevicename = b.getUpdatedevicename();
			statement.setString(1, updatedevicename);
			statement.setString(2, user);
			status = statement.executeUpdate();
			b.setDevicename(updatedevicename);
			connection.close();
		} catch(Exception e) {
			System.out.println(e);
		}
		
		return status;
	}
	
	public static int updatepass(Bean b, String user) {
		
		int status = 0;
		String updatepassword;
		
		try {
			
			connection = DBconnecter.getConnection();
			statement = connection.prepareStatement("UPDATE login SET password = md5(?) WHERE username = ?");
			updatepassword = b.getUpdatepassword();
			
			//MessageDigest messagedigest = MessageDigest.getInstance("SHA-256");
			//byte[] bihash = messagedigest.digest(updatepassword.getBytes());
			//String hash = DatatypeConverter.printHexBinary(bihash);
			
			statement.setString(1, updatepassword);
			statement.setString(2, user);
			status = statement.executeUpdate();
			b.setPassword(updatepassword);
			connection.close();
		} catch(Exception e) {
			System.out.println(e);
		}
		
		return status;
	}

	public static int updateUser(Bean b, String user) {

		int status = 0;
		String updateusername;

		try {

			connection = DBconnecter.getConnection();
			statement = connection.prepareStatement("UPDATE login SET username = ? WHERE username = ?");
			updateusername = b.getUpdateusername();
			
			statement.setString(1, updateusername);
			statement.setString(2, user);
			status = statement.executeUpdate();
			b.setUsername(updateusername);
			connection.close();
		} catch(Exception e) {
			System.out.println(e);
		}

		return status;
	}



}

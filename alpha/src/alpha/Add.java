package alpha;

import java.sql.*;

import javax.xml.bind.DatatypeConverter;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
public class Add {
	
	static Connection connection = null;
	static PreparedStatement statement = null;
	
	public static int addNewUser(Bean obj) throws NoSuchAlgorithmException {
		
		MessageDigest messagedigest = MessageDigest.getInstance("SHA-256");
	
		int stat = 0;
		try {	
			connection = DBconnecter.getConnection();
			statement = connection.prepareStatement("INSERT INTO login VALUES(?,?,?)");
			
			String newdevicename = obj.getNewdevicename();
			String newusername = obj.getNewusername();
			String newpassword = obj.getNewpassword();
			
			byte[] bihash = messagedigest.digest(newpassword.getBytes());
			String hash = DatatypeConverter.printHexBinary(bihash);
			
			statement.setString(1, newdevicename);
			statement.setString(2, newusername);
			statement.setString(3, hash);
			
			stat = statement.executeUpdate();
			connection.close();
			
		} catch(Exception e) {
			System.out.println("username already exists please select different username");
		}
		return stat;
		
	}

}

package connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class connection {
	
	public static Connection get_Connection() {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn;
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/school","root","");
			System.out.println(conn.getCatalog() + " " + "Database Connection Success");
			return conn;
		}
		catch(SQLException e) {
			e.printStackTrace();
		}
		catch(ClassNotFoundException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public static PreparedStatement getPreparedStatement(String sql) {
		PreparedStatement ps;
		Connection conn=connection.get_Connection();
		try {
			ps=conn.prepareStatement(sql);
			return ps;
		}
		catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}

}





	




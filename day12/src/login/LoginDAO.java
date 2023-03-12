package login;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class LoginDAO {

	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	private final String url = "jdbc:oracle:thin:@192.168.1.100:1521:xe";
	private final String user = "c##itbank";
	private final String password = "it";
	
	public LoginDAO() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(url, user, password);
		
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	
	
	public int insert(LoginDTO user) {
		int row = 0;
		String sql = "insert into login (userid, userpw, username) values(?, ?, ?)";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, user.getUserid());
			pstmt.setString(2, user.getUserpw());
			pstmt.setString(3, user.getUsername());
			row = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if(pstmt != null) pstmt.close();
			} catch (Exception e2) {
			
			}
		}		
		return row;
	}


	public String login(String equalsid, String equalspw) {
		String username = null;
		String sql = "SELECT userpw,username FROM login WHERE userid=?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, equalsid);
			rs= pstmt.executeQuery();
			if(rs.next()) {
				if(rs.getString("userpw").equals(equalspw)) {
					username = rs.getString("username");
				}
			}			
		} catch (SQLException e) {
			e.printStackTrace();
		}  finally {
			try {
				if(rs !=null) rs.close();
				if(pstmt !=null) pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return username;
	}
	
	public LoginDTO getUser(String userid) {
		LoginDTO ob = null;
		String sql = "select * from login where userid=?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userid);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				ob = new LoginDTO();
				ob.setUserid(rs.getString("userid"));
				ob.setUserpw(rs.getString("userpw"));
				ob.setUsername(rs.getString("username"));				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs !=null) rs.close();
				if(pstmt !=null) pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return ob;
	}
	
	
	
	
	
}

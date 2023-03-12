package product;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Handler {

	private Connection conn;
	private Statement stmt;
	private ResultSet rs;
	
	public ProductDTO searchOne(String sql) {
		ProductDTO ob = null;		
		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				ob = new ProductDTO();
				ob.setIdx(rs.getInt("idx"));
				ob.setName(rs.getString("name"));
				ob.setPrice(rs.getInt("price"));
				ob.setImgPath(rs.getString("imgPath"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		finally {
			try {
				if(rs != null) rs.close();
				if(stmt != null) stmt.close();
				if(conn != null) conn.close();
			} catch (Exception e) {}
		}
		return ob;
	}
	
}

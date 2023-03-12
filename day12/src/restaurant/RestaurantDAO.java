package restaurant;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class RestaurantDAO {

	private final String url = "jdbc:oracle:thin:@192.168.1.100:1521:xe";
	private final String user = "c##itbank";
	private final String password = "it";
	
	private Connection conn;
	private Statement stmt;
	private PreparedStatement pstmt;
	private ResultSet rs;	
	
	public RestaurantDAO() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");				
			conn = DriverManager.getConnection(url, user, password);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<RestaurantDTO> showList() {
		ArrayList<RestaurantDTO> list = new ArrayList<RestaurantDTO>();
		String sql = "select * from restaurant order by idx";
		
		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			
			while (rs.next()) {
				RestaurantDTO ob = new RestaurantDTO();
				ob.setIdx(rs.getInt("idx"));
				ob.setRscategory(rs.getString("rscategory"));
				ob.setRsname(rs.getString("rsname"));
				ob.setRsaddress(rs.getString("rsaddress"));
				ob.setRsphone(rs.getString("rsphone"));
				ob.setParking(rs.getString("parking"));
				ob.setJoindate(rs.getDate("joindate"));
				list.add(ob);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
				try {
					if(rs != null)	rs.close();
					if(stmt != null) stmt.close();
					if(conn != null) conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}			
		}
		return list;
	}
	
	public int insert(RestaurantDTO store) {
		int row = 0;
		String sql = "insert into restaurant (rscategory, rsname, rsaddress, rsphone, parking) values (?, ?, ?, ?, ?)";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, store.getRscategory());	// 1. 카테고리
			pstmt.setString(2, store.getRsname());// 2. 가게이름
			pstmt.setString(3, store.getRsaddress());// 3. 가게 주소
			pstmt.setString(4, store.getRsphone());// 4. 가게번호
			pstmt.setString(5, store.getParking());// 5. 주차여부
			row = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs != null)	rs.close();
				if(stmt != null) stmt.close();
				if(conn != null) conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}			
	}				
		return row;
	}
	
	public int delete(int idx) {
		int row = 0;
		String sql = "delete from restaurant where idx =" + idx;
		
		try {
			pstmt = conn.prepareStatement(sql);
			row = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs != null)	rs.close();
				if(stmt != null) stmt.close();
				if(conn != null) conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}			
	}
		return row;
	}
	
	public RestaurantDTO searchOne(int idx) {
		RestaurantDTO dto = null;
		String sql = "select * from restaurant where idx =" + idx;
		
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while (rs.next()) {
				dto = new RestaurantDTO();
				dto.setIdx(rs.getInt("idx"));
				dto.setRscategory(rs.getString("rscategory"));
				dto.setRsname(rs.getString("rsname"));
				dto.setRsaddress(rs.getString("rsaddress"));
				dto.setRsphone(rs.getString("rsphone"));
				dto.setParking(rs.getString("parking"));
				dto.setJoindate(rs.getDate("joindate"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs != null)	rs.close();
				if(stmt != null) stmt.close();
				if(conn != null) conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}			
	}
		return dto;
	}
	
	public int update(RestaurantDTO store) {
		int row = 0;
		String sql = "update restaurant set rscategory=?, rsname=?, rsaddress=?, rsphone=?, parking=? where idx=?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, store.getRscategory());
			pstmt.setString(2, store.getRsname());
			pstmt.setString(3, store.getRsaddress());
			pstmt.setString(4, store.getRsphone());
			pstmt.setString(5, store.getParking());
			pstmt.setInt(6, store.getIdx());			
			row = pstmt.executeUpdate();
						
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs != null)	rs.close();
				if(stmt != null) stmt.close();
				if(conn != null) conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}			
	}	
		return row;
	}
	
}

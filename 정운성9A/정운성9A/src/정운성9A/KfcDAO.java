package 정운성9A;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;


public class KfcDAO {

	private static KfcDAO instance = new KfcDAO();
	
	public static KfcDAO getInstance() {
		return instance;
	}
	
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	private Context init;
	private DataSource ds;
	
	private KfcDAO() {
		try {
			init = new InitialContext();
			ds = (DataSource) init.lookup("java:comp/env/jdbc/oracle");
		} catch (NamingException e) {
			e.printStackTrace();
		}
	}
	
	private void close() {
		try {
			if(rs != null) rs.close();
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
		
	public ArrayList<KfcDTO> getList() {
		ArrayList<KfcDTO> list = new ArrayList<KfcDTO>();
		String sql = "select * from kfc_menu where wtd = 'Y'";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				KfcDTO ob = new KfcDTO();
				ob.setIdx(rs.getInt("idx"));
				ob.setName(rs.getString("name"));
				ob.setPrice(rs.getInt("price"));
				ob.setCategory(rs.getString("category"));
				ob.setMemo(rs.getString("memo"));
				ob.setImg(rs.getString("img"));
				ob.setWtd(rs.getString("wtd"));
				list.add(ob);				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}		
		return list;
	}
	
	
	public ArrayList<KfcDTO> cateList(String category) {
		ArrayList<KfcDTO> list = new ArrayList<KfcDTO>();
		String sql = "select * from kfc_menu where category = '" + category + "'" + "and wtd ='Y'";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				KfcDTO ob = new KfcDTO();
				ob.setIdx(rs.getInt("idx"));
				ob.setName(rs.getString("name"));
				ob.setPrice(rs.getInt("price"));
				ob.setCategory(rs.getString("category"));
				ob.setMemo(rs.getString("memo"));
				ob.setImg(rs.getString("img"));
				ob.setWtd(rs.getString("wtd"));
				list.add(ob);				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}		
		return list;
	}
	
	public KfcDTO selectOne(String menu) {
		KfcDTO ob = null;
		String sql = "select * from kfc_menu where name = '"+menu+"'";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				ob = new KfcDTO();
				ob.setIdx(rs.getInt("idx"));
				ob.setName(rs.getString("name"));
				ob.setPrice(rs.getInt("price"));
				ob.setCategory(rs.getString("category"));
				ob.setMemo(rs.getString("memo"));
				ob.setImg(rs.getString("img"));
				ob.setWtd(rs.getString("wtd"));
					
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}		
		return ob;
	}
		
	public int update(KfcDTO menu) {
		int row = 0;
		String sql = "update kfc_menu set name=?, price=?, category=?, memo=?, img=?, wtd=? where idx=?";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, menu.getName());
			pstmt.setInt(2, menu.getPrice());
			pstmt.setString(3, menu.getCategory());
			pstmt.setString(4, menu.getMemo());
			pstmt.setString(5, menu.getImg());
			pstmt.setString(6, menu.getWtd());
			pstmt.setInt(7, menu.getIdx());
			row = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}		
		return row;
	}
	
	public int addition(KfcDTO add) {
		int row = 0;
		String sql = "insert into kfc_menu(name, price, category, memo, img, wtd) values(?, ?, ?, ?, ?, ?)";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, add.getName());
			pstmt.setInt(2, add.getPrice());
			pstmt.setString(3, add.getCategory());
			pstmt.setString(4, add.getMemo());
			pstmt.setString(5, add.getImg());
			pstmt.setString(6, add.getWtd());
			row = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}		
		return row;
	}
	
	public ArrayList<KfcDTO> showRecoverList() {
		ArrayList<KfcDTO> list = new ArrayList<KfcDTO>();
		String sql = "select * from kfc_menu where wtd = 'N'";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				KfcDTO ob = new KfcDTO();
				ob.setIdx(rs.getInt("idx"));
				ob.setName(rs.getString("name"));
				ob.setPrice(rs.getInt("price"));
				ob.setCategory(rs.getString("category"));
				ob.setMemo(rs.getString("memo"));
				ob.setImg(rs.getString("img"));
				ob.setWtd(rs.getString("wtd"));
				list.add(ob);				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}		
		return list;
	}
	
	
	public int recover(int idx) {
		int row =0;
		String sql = "update kfc_menu set wtd = 'Y' where idx=" + idx;
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return row;
	}
	
	public ArrayList<KfcDTO> showDeleteList() {
		ArrayList<KfcDTO> list = new ArrayList<KfcDTO>();
		String sql = "select * from kfc_menu where wtd = 'Y'";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				KfcDTO ob = new KfcDTO();
				ob.setIdx(rs.getInt("idx"));
				ob.setName(rs.getString("name"));
				ob.setPrice(rs.getInt("price"));
				ob.setCategory(rs.getString("category"));
				ob.setMemo(rs.getString("memo"));
				ob.setImg(rs.getString("img"));
				ob.setWtd(rs.getString("wtd"));
				list.add(ob);				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}		
		return list;
	}
	
	
	
	
	
	public int deleteIdx(int idx) {
		int row = 0;
		String sql = "update kfc_menu set wtd = 'N' where idx=" + idx;
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return row;
	}
	
	public int deleteName(String name) {
		int row = 0;
		
		String sql = "update kfc_menu set wtd ='N' where name='"+ name +"'";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return row;
	}
	
	
}

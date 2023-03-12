package ex03;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

// 커넥션 풀 (dataSource)
// context.xml
// web.xml
// 싱글톤

public class Ex03DAO {
	
	private static Ex03DAO instance = new Ex03DAO();
	
	public static Ex03DAO getInstance() {
		return instance;
	}

	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	private DataSource ds;
	private Context init;
	
	public Ex03DAO() {
		try {
			init = new InitialContext();
			ds = (DataSource) init.lookup("java:comp/env/jdbc/oracle");
			String version = getVersion();
			System.out.println(version + "접속됨");
		} catch (NamingException e) {
			System.out.println("생성자 예외 : " + e);
		}
	}

	private String getVersion() {
		String version = "";
		String sql = "select banner from v$version";
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				version = rs.getString("banner");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return version;
	}
	
	
	// DB에 저장된 데이터를 불러와서 리스트로 반환하는 함수
	public List<Ex03DTO> selectList() {
		ArrayList<Ex03DTO> list = new ArrayList<Ex03DTO>();
		String sql = "select * from uploadTest1 order by idx";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				Ex03DTO ob = new Ex03DTO();
				ob.setIdx(rs.getInt("idx"));
				ob.setName(rs.getString("name"));
				ob.setBirthDate(rs.getDate("birthDate"));
				ob.setImgPath(rs.getString("imgPath"));
				list.add(ob);				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if(conn != null) conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
		}
		
		
		return list;
	}
	
	// 사용자 입력데이터를 DB에 저장하는 함수
	public int insert(Ex03DTO dto) {
		int row = 0;
		String sql = "insert into uploadTest1 (name, birthDate, imgPath) values(?, ?, ?)";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getName());
			pstmt.setDate(2, dto.getBirthDate());
			pstmt.setString(3, dto.getImgPath());
			row = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			} catch (Exception e2) {}
		}
		
		return row;
	}
	
}

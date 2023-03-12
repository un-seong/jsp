package member2;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class MemberDAO {

	// 싱글톤과 ConnectionPool이 적용된 member2 테이블 관련 DAO를 작성하세요
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
		
	private Context init;
	private DataSource ds;	// 여러개의 conn을 가지고 있다가 하나씩 내어주고,
							// conn.close()하면 객체를 돌려받아서, 다시 사용할 수 있도록 처리한다
							// 컨베이어 벨트 방식으로 conn 객체를 재활용한다
	
	private static MemberDAO instance = new MemberDAO();	// 인스턴스 하나 보관
	
	public static MemberDAO getInstance() {	// 싱글톤 객체 반환 메서드
		return instance;
	}
	
	private MemberDAO() {	// 생성자는 외부에서 호출할 수 없음
		try {				// 생성자를 호출하면 context에서 ds를 가져온다 (ds에는 conn들이 있다)
			init = (Context) new InitialContext();
			ds = (DataSource) init.lookup("java:comp/env/jdbc/oracle");
		} catch (Exception e) {
		
		} finally {
			if(conn != null)
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
		}
	}	// end of constructor
	
	// select 하는 경우, rs의 데이터를 DTO에 맞게 맵핑하는 과정이 필요하다
	// 전체, 검색, 단일 조회 모든 경우에 사용할 수 있도록 함수를 만들어 둔다
	private MemberDTO mapping(ResultSet rs) throws SQLException {
		MemberDTO dto = new MemberDTO();
		dto.setGender(rs.getString("gender"));
		dto.setIdx(rs.getInt("idx"));
		dto.setJoindate(rs.getDate("joinDate"));
		dto.setProfileimg(rs.getString("profileimg"));
		dto.setUserid(rs.getString("userid"));
		dto.setUserpw(rs.getString("userpw"));
		dto.setUsername(rs.getString("username"));
		return dto;
	}
	
	// 모든 함수에서 rs, pstmt, conn을 순서대로 닫아준다 (열기의 역순으로 닫는다)
	private void close() {
		try {
			if(rs != null) rs.close();
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
			// dataSource에서 가져온 conn은 close()하면 회수된다
		} catch (Exception e) {	}
	}
			
	// 회원 목록을 반환하는 함수를 작성하여 jsp에서 출력합니다
	public ArrayList<MemberDTO> selectList() {	 // 아래 내가 작성한 showList와 다르게 작성 할 수있음
		ArrayList<MemberDTO> list = new ArrayList<MemberDTO>();
		String sql = "select * from member2";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				MemberDTO dto = mapping(rs);	// 위에 함수를 따로 구성하여 줄일 수 있다!
				list.add(dto);
//				list.add(mapping(rs));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}		
		return list;
	}
	
	public MemberDTO selectOne(int idx) {
		MemberDTO dto = null;
		String sql = "select * from member2 where idx=" + idx;
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				dto = mapping(rs);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return dto;
	}
		
	public ArrayList<MemberDTO> showList() {
		ArrayList<MemberDTO> list = new ArrayList<MemberDTO>();
		String sql = "select * from member2";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				MemberDTO ob = new MemberDTO();
				ob.setIdx(rs.getInt(1));
				ob.setUserid(rs.getString(2));
				ob.setUserpw(rs.getString(3));
				ob.setUsername(rs.getString(4));
				ob.setJoindate(rs.getDate(5));
				ob.setGender(rs.getString(6));
				ob.setProfileimg(rs.getString(7));
				list.add(ob);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return list;				
	}
	
	// header.jsp 를 작성하여 taglib, import, dao 선언을 수행합니다
	
	// list.jsp 를 작성하여 회원 목록을 table 형식으로 화면에 출력합니다
	
	
}

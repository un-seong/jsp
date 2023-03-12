package dbTest;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

// WebContent/WEB-INF/lib 폴더 내부에 ojdbc8.jar 파일이 복사 되어 있어야 한다

public class Ex03 {
	public static void main(String[] args) throws Exception {
		
		String url = "192.168.1.100";
		int port = 1521;
		String sid = "xe";
		String user = "c##itbank";
		String password = "it";
		
//		Connection conn = null;
//		Statement stmt = null;
		
		
		String diverName = oracle.jdbc.driver.OracleDriver.class.getName();
		Class.forName(diverName);
		url = "jdbc:oracle:thin:@" + url + ":" + port + ":" + sid;
		String sql = "select banner from v$version";
		String result = null;
				
		Connection conn = DriverManager.getConnection(url, user, password);
		Statement stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery(sql);;
				
		while(rs.next()) {
			result = rs.getString("banner");
		}
		System.out.println(result);
		rs.close();
		stmt.close();
		conn.close();
		
	}
	
	
}

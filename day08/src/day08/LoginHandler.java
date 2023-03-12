package day08;

import java.util.ArrayList;

public class LoginHandler {

	private ArrayList<Login> list = new ArrayList<Login>();
	
	public LoginHandler() {
		setDummy();
	}
	
	private void setDummy() {
		list.add(new Login("admin1", "123"));
		list.add(new Login("admin2", "123"));
		list.add(new Login("admin3", "123"));
	}
	
//	public int login(Login user) {
//		for(Login x : list) {
//			if(x.getUserid().equals(user.getUserid()) && x.getUserpw().equals(user.getUserpw())) {
//				return 1;
//			}
//		}
//		return 0;		
//	}
	
	public Login login(Login user) {
		Login login = null;
		for(Login x : list) {
			if(x.getUserid().equals(user.getUserid()) && x.getUserpw().equals(user.getUserpw())) {
				login = x;
				break;
			}
		}
		return login;
	}
}

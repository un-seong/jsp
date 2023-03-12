package day08;

public class Login {
	String userid;
	String userpw;
	
	public Login() {
	
	}
	
	public Login(String userid, String userpw) {
		super();
		this.userid = userid;
		this.userpw = userpw;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getUserpw() {
		return userpw;
	}

	public void setUserpw(String userpw) {
		this.userpw = userpw;
	}
	
	
	
	
}

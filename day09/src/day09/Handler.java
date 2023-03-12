package day09;

import java.util.ArrayList;
import java.util.Arrays;

public class Handler {
	ArrayList<Member> list;
	
	public Handler() {
		Member[] arr = {
			new Member("admin1", "123", "이모씨"),
			new Member("admin2", "123", "김모씨")		
		};
		
		list = new ArrayList<Member>(Arrays.asList(arr));
		// Member[] -> List<Member> -> ArrayList<Member>
		// List<T>로 받을 경우,
	}
	
	// 로그인에 성공한 객체를 반환하도록 만들자
	// boolean 만 반환하면, 성공 실패 판별할 수 있으나, 어느 계정인지 확인할 수 없다	
	public Member login(Member user) {
		Member login = null;
		for(Member mem : list) {
			if(mem.getUserid().equals(user.getUserid())) {
				if(mem.getUserpw().equals(user.getUserpw())) {
					login = mem;
					break;
				}
			}
		}
		return login;
	}
}

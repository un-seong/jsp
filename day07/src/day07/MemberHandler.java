package day07;

import java.util.ArrayList;
import java.util.stream.Collectors;

// 상세 기능 및 데이터 유지
// 함수 중심, 데이터를 어떤 방식(method)으로 처리할 것인가?

public class MemberHandler {
	private ArrayList<Member> list = new ArrayList<Member>();
	
	public MemberHandler() {
		setDummy();
	}
	
	// private : 외부에서 호출하는 함수가 아니다 (내부에서만 사용한다)
	// void : 결과를 보고할 필요가 없다. 결과값을 반환하여 다른 함수와 연계하지 않는다	
	private void setDummy() {
		list.add(new Member("fff", "123", "김모씨", 40, "2002-22-22"));
		list.add(new Member("zzz", "456", "정모씨", 30, "2042-24-22"));
		list.add(new Member("qqq", "789", "한모씨", 20, "2002-66-22"));
	}
	
	public ArrayList<Member> getList(){
		return list;
	}
	
	
	
//	선생님이 적으신것
	public boolean insert(Member user) {
		boolean flag = false;
		
		int dupSize = list.stream()	// (리스트의 스트림을 호출하여)
			.filter(member -> member.getUserid().equals(user.getUserid()))	// 필터(아이디가 일치하는 요소만 남긴다)
			.collect(Collectors.toList()).size();	// 다시 리스트로 변환하여, 사이즈를 int형으로 저장한다
		
		System.out.println(dupSize);
		
		if(dupSize == 0) {
			flag = list.add(user);
		}		
		return flag;
	}

	// 내가 적은것 ! 성공 실패는 저렇게 해도 됨!
//	public boolean insert(Member m) {
//		for(Member x : list) {
//			if(x.getUserid().equals(m.getUserid())) {
//				return false;
//			}
//		}
//		return list.add(m);
//	}
				
	public Member login(Member user) {
		Member login = null;
		// 리스트에서 id와 pw가 일치하는 계정이 있으면 login 변수에 저장한다
		for(Member x : list) {
			if(x.getUserid().equals(user.getUserid()) && x.getUserpw().equals(user.getUserpw())) {
				login = x;
				break;
			}
		}
		return login;
	}
	
	public int modify(Member user) {
		int index = -1;
		
		// 아이디가 일치하는 객체가 리스트에서 몇번째에 있는지 확인하고 나서
		for(int i = 0 ; i < list.size(); i++) {
			Member m = list.get(i);
			if(m.getUserid().equals(user.getUserid())) {
				index = i;
				break;
			}
		}
		// 그 위치에 새로운 객체를 덮어씌운다
		if(index >= 0) {
			list.set(index, user);
		}

		return index;	// 실패하면 -1, 0 이상이면 성공
	}
	
	
	
	
	// 내가 한것!
//	public int modify(Member user) {
//		for(Member x : list) {
//			if(x.getUserid().equals(user.getUserid())) {
//				x.setUserpw(user.getUserpw());
//				x.setUsername(user.getUsername());
//				x.setAge(user.getAge());
//				x.setBirth(user.getBirth());
//				return 1;
//			}
//		}
//		return 0;
//	}
	
	
	// 내가 main에서 보기 위해 한 것! 
//	public ArrayList<Member> getList() {
//		if(list.isEmpty()) {
//			list.add(new Member("fff", "123", "김모씨", 40, "2002-22-22"));
//			list.add(new Member("zzz", "456", "정모씨", 30, "2042-24-22"));
//			list.add(new Member("qqq", "789", "한모씨", 20, "2002-66-22"));
//		}
//		return list;
//	}
//	
//	public void showList() {
//		for(Member x : list) {
//			System.out.println(x);
//		}
//	}
		
	
}

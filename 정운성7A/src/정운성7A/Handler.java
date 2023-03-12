package 정운성7A;

import java.util.ArrayList;

public class Handler {

	private ArrayList<PhoneBook> list = new ArrayList<PhoneBook>();
	
	private int idx = 0;
	
	private int nextIdx() {
		return ++idx;
	}
		
	public Handler() {
		if(list.isEmpty()) {
			list.add(new PhoneBook(nextIdx(), "홍길동", "010-1111-1111"));
			list.add(new PhoneBook(nextIdx(), "김모씨", "010-2222-2222"));
			list.add(new PhoneBook(nextIdx(), "이모씨", "010-3333-3333"));
			list.add(new PhoneBook(nextIdx(), "한모씨", "010-4444-4444"));
		}
	}
	
	public ArrayList<PhoneBook> getList() {
		return list;
	}
	
	public int insert(PhoneBook pb) {
		if(!pb.getName().contains(" ") && !pb.getNumber().contains(" ") 
				&& pb.getNumber().length() < 14 && pb.getNumber().length() > 9) {
			
				pb.setIdx(nextIdx());
				list.add(pb);
				return 1;
			}
		return 0;
	}
	
	public PhoneBook getperson(int idx) {
		PhoneBook person = null;
		for(PhoneBook pb : list) {
			if(pb.getIdx() == idx) {
				person = pb;
				break;
			}
		}
		return person;
	}
	
	
	public int update(PhoneBook pb) {
		int index = -1;
		if(!pb.getName().contains(" ") && !pb.getNumber().contains(" ")
				&& pb.getNumber().length() < 14 && pb.getNumber().length() > 9) {
			
				for(int i = 0; i< list.size(); i++) {
					if(list.get(i).getIdx() == pb.getIdx()) {
						index = i;
						break;
					}
				}
				list.set(index, pb);
				return index;
			}
		return -1;
		}
	
	public int delete(int idx) {
		boolean flag = list.removeIf(phonebook -> phonebook.getIdx() == idx);
		return flag ? 1 : 0;
		
		}

	}



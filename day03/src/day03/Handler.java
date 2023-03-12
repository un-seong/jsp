package day03;

import java.util.ArrayList;

public class Handler {
	
	private ArrayList<Book> list = new ArrayList<Book>();
	private int idx = 0;
	
	
	public Handler() {
		Book ob1 = new Book();
		ob1.setIdx(nextIdx());
		ob1.setName("트렌드코리아 2023");
		ob1.setPrice(17100);
		ob1.setAuthor("추예린");
		ob1.setPublisher("미래의 창");
		list.add(ob1);
		
		Book ob2 = new Book();
		ob2.setIdx(nextIdx());
		ob2.setName("조국의 법고전 선택");
		ob2.setPrice(19800);
		ob2.setAuthor("조국");
		ob2.setPublisher("오마이북");
		list.add(ob2);
		
		Book ob3 = new Book();
		ob3.setIdx(nextIdx());
		ob3.setName("홍길동");
		ob3.setPrice(15000);
		ob3.setAuthor("동해번쩍");
		ob3.setPublisher("서해번쩍");
		list.add(ob3);
	}
	
	private int nextIdx() {
		idx++;
		return idx;
	}
	
	public ArrayList<Book> getList() {
		return list;
	}
	
	public void insert(Book ob) {
		ob.setIdx(nextIdx());
		list.add(ob);
	}
	
	public int delete(int idx) {
		boolean flag = list.removeIf(book -> book.getIdx() == idx);
//		boolean flag = false;
//		for(int i = 0; i < list.size(); i++) {
//			if(list.get(i).getIdx() == idx) {
//				list.remove(i);
//				flag = true;
//				break;
//			}
//		}
		return flag ? 1 : 0;	
	}

	public Book search(String name) {
		for(int i = 0; i< list.size(); i++) {
			if(list.get(i).getName().equals(name)) {
				return list.get(i);
			}
		}
		return null;	
	}
	
	
	
	
}

package 정운성7A;

public class PhoneBook {
	
	private int idx;
	private String name;
	private String number;
	
	public PhoneBook() {
	
	}

	public PhoneBook(int idx, String name, String number) {
		this.idx = idx;
		this.name = name;
		this.number = number;
	}

	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getNumber() {
		return number;
	}

	public void setNumber(String number) {
		this.number = number;
	}
		

}

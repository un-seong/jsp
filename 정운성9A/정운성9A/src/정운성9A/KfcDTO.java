package 정운성9A;

import java.io.File;

//	idx         number      
//	name        varchar2(100)
//	price       number
//	category    varchar2(100)
//	memo        varchar2(100)
//	img         varchar2(100)
//	wtd         varchar2(100)


public class KfcDTO {

	private int idx;
	private String name;
	private int price;
	private String category;
	private String memo;
	private String img;
	private String wtd;
	private File upload;
	
	
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
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getMemo() {
		return memo;
	}
	public void setMemo(String memo) {
		this.memo = memo;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getWtd() {
		return wtd;
	}
	public void setWtd(String wtd) {
		this.wtd = wtd;
	}
	public File getUpload() {
		return upload;
	}
	public void setUpload(File upload) {
		this.upload = upload;
	}
	
	
	
		
}

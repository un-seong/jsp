package restaurant;

import java.sql.Date;

//	IDX        NOT NULL NUMBER        	// 관리번호
//	RSCATEGORY NOT NULL VARCHAR2(100) 	// 카테고리
//	RSNAME     NOT NULL VARCHAR2(255) 	// 식당 이름
//	RSADDRESS  NOT NULL VARCHAR2(100) 	// 식당 주소
//	RSPHONE    NOT NULL VARCHAR2(100) 	// 식당 전화번호
//	PARKING             VARCHAR2(20)  	// 주차여부
//	JOINDATE            DATE          	// 등록날짜

public class RestaurantDTO {

	private int idx;
	private String rscategory;
	private String rsname;
	private String rsaddress;
	private String rsphone;
	private String parking;
	private Date joindate;
	
	
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getRscategory() {
		return rscategory;
	}
	public void setRscategory(String rscategory) {
		this.rscategory = rscategory;
	}
	public String getRsname() {
		return rsname;
	}
	public void setRsname(String rsname) {
		this.rsname = rsname;
	}
	public String getRsaddress() {
		return rsaddress;
	}
	public void setRsaddress(String rsaddress) {
		this.rsaddress = rsaddress;
	}
	public String getRsphone() {
		return rsphone;
	}
	public void setRsphone(String rsphone) {
		this.rsphone = rsphone;
	}
	public String getParking() {
		return parking;
	}
	public void setParking(String parking) {
		this.parking = parking;
	}
	public Date getJoindate() {
		return joindate;
	}
	public void setJoindate(Date joindate) {
		this.joindate = joindate;
	}
	
	
}

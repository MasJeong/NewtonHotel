package reservation.dto;

public class ReserVO {
	
	int reserId;
	String reservation_number;
	String userId;
	String userName;
	String hotelName;
	String reservation_in;
	String reservation_out;
	String roomType;
	int price;
	int adult;
	int child;
	int switch_num;

	int count;
	int cancelCount;
	
	public int getReserId() {
		return reserId;
	}
	public void setReserId(int reserId) {
		this.reserId = reserId;
	}
	
	public int getCancelCount() {
		return cancelCount;
	}
	public void setCancelCount(int cancelCount) {
		this.cancelCount = cancelCount;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	
	public int getSwitch_num() {
		return switch_num;
	}
	public void setSwitch_num(int switch_num) {
		this.switch_num = switch_num;
	}
	
	public String getReservation_number() {
		return reservation_number;
	}
	public void setReservation_number(String reservation_number) {
		this.reservation_number = reservation_number;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getHotelName() {
		return hotelName;
	}
	public void setHotelName(String hotelName) {
		this.hotelName = hotelName;
	}
	public String getReservation_in() {
		return reservation_in;
	}
	public void setReservation_in(String reservation_in) {
		this.reservation_in = reservation_in;
	}
	public String getReservation_out() {
		return reservation_out;
	}
	public void setReservation_out(String reservation_out) {
		this.reservation_out = reservation_out;
	}
	public String getRoomType() {
		return roomType;
	}
	public void setRoomType(String roomType) {
		this.roomType = roomType;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getAdult() {
		return adult;
	}
	public void setAdult(int adult) {
		this.adult = adult;
	}
	public int getChild() {
		return child;
	}
	public void setChild(int child) {
		this.child = child;
	}
	
}

package reviews.dto;

public class reviewsVO {
	private int num;
	private String user_id;
	private String password;
	private String title;
	private String content;
	private int readcount;
	private String file_name;
	private String save_path;
	private String posted;
	private int recommedation;
	private String rank;
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getReadcount() {
		return readcount;
	}
	public void setReadcount(int readcount) {
		this.readcount = readcount;
	}
	public String getFile_name() {
		return file_name;
	}
	public void setFile_name(String file_name) {
		this.file_name = file_name;
	}
	public String getSave_path() {
		return save_path;
	}
	public void setSave_path(String save_path) {
		this.save_path = save_path;
	}
	public String getPosted() {
		return posted;
	}
	public void setPosted(String posted) {
		this.posted = posted;
	}
	public int getRecommedation() {
		return recommedation;
	}
	public void setRecommedation(int recommedation) {
		this.recommedation = recommedation;
	}
	public String getRank() {
		System.out.println("getRank() = " + rank);
		return rank;
	}
	public void setRank(String rank) {
		this.rank = rank;
		System.out.println(this.rank);
	}
}
	
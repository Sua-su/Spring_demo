package bgp500test;

public class LoginDTOTest {
	
	private String userID;
	private String userPW;
	private String loginState;   //우클릭 source 생성 뭐시기 
	
	public LoginDTOTest() {
		super();
		// TODO Auto-generated constructor stub
	}
	public LoginDTOTest(String userID, String userPW, String loginState) {
		super();
		this.userID = userID;
		this.userPW = userPW;
		this.loginState = loginState;
	}
	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
	public String getUserPW() {
		return userPW;
	}
	public void setUserPW(String userPW) {
		this.userPW = userPW;
	}
	public String getLoginState() {
		return loginState;
	}
	public void setLoginState(String loginState) {
		this.loginState = loginState;
	}
	
	
	
}
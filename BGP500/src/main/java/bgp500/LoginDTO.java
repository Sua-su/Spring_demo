package bgp500;

public class LoginDTO { // Data Transfer Object
	// 레이어 시스템 간에 오가는 데이터를 묶음 운반하기 위한 객체
	// 계층 간 데이터 교환을 위한 객체(java beans)로 데이터를 담아 전달하는 바구니
	// DB에서 데이터를 얻어 controller/service로 보낼떄 사용
	// 로직을 가지고 있지않았다는 특징으로 순수한 데이터 전달만을 위한 객체 getter/setter 메서드만 가짐.
	// -> 보내는 쪽에서 setter에 데이터를 DTO에 담아보내고 받는 쪽에서 getter를 사용해 데이터를 꺼냄. 
	
	private String userID;
	private String userPW;
	private String loginState;
	
	// 기본 생성자(default constructor)
	// 프레임워크/라이브러리에서 객체를 reflection(리플렉션)으로 만들 때 기본 생성자를 호출하기에 생성
	public LoginDTO() {
		super();
	}
	
	//매개변수를 받는 생성자. 객체를 생성하면서 값을 한 번에 초기화할 때 사용
	public LoginDTO(String userID, String userPW, String loginState) {
		super();
		// 멤버 변수 안에 매개변수 값 지정
		this.userID = userID;
		this.userPW = userPW;
		this.loginState = loginState;
	}

	//	userID method
	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
	
	// userPW method
	public String getUserPW() {
		return userPW;
	}
	public void setUserPW(String userPW) {
		this.userPW = userPW;
	}
	
	// loginState method
	public String getLoginState() {
		return loginState;
	}
	public void setLoginState(String loginState) {
		this.loginState = loginState;
	}
	
	
	
}

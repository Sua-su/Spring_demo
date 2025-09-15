package bgp500;

public class LoginDAO { // Data Access Object
						// DB접근 로직을 전담
						// CRUD (insert/update/delete/select) 
	private final String dummyID = "ditto";
	private final String dummyPW = "0132";
	
	// LoginDTO를 리턴타입으로 잡고, 파라메터 내부엔 LoginDTO 메소드를 사용하기 위해 객체 선언 
	public LoginDTO loginAuth(LoginDTO dto) {
		if(dummyID.equals(dto.getUserID())) {
			if(dummyPW.equals(dto.getUserPW())) {
				dto.setLoginState("login");
			} else {
				dto.setLoginState("errorPW");
			}
		} else {
			dto.setLoginState("errorID");
		}
		return dto;
	}
}

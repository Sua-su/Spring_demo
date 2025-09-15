package bgp500test;

public class LoginDAOTest {

	private final String userID_DUMMY = "su";
	private final String UserPW_DUMMY = "1234";
	
	public LoginDTOTest loginAuth(LoginDTOTest loginDTOTest) {
		
		if ( userID_DUMMY.equals(loginDTOTest.getUserID())) {
			if (UserPW_DUMMY.equals(loginDTOTest.getUserPW())) {
				loginDTOTest.setLoginState("login");
			}else {
				loginDTOTest.setLoginState("errorPW");
			}
		}else {
			loginDTOTest.setLoginState("errorID");
		}
		return loginDTOTest;
	}

}

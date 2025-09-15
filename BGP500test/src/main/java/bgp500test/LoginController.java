package bgp500test;

import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private LoginDAOTest loginDAOTest;
	private LoginDTOTest loginDTOTest;
	
	
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		String userid = request.getParameter("userid");
		String userwd = request.getParameter("userwd");		
		loginDAOTest = new LoginDAOTest();
		
		loginDTOTest = new LoginDTOTest();
		
		loginDTOTest.setUserID(userid);
		loginDTOTest.setUserPW(userwd);
		
		HttpSession session = request.getSession(true);
		
		if("LOGIN".equals(request.getParameter("actionType"))) {
			loginDTOTest.setLoginState("login");
			
			loginDTOTest = loginDAOTest.loginAuth(loginDTOTest);
			
			
			session.setAttribute("loginState", loginDTOTest.getLoginState());
			session.setAttribute("userID", loginDTOTest.getUserID());
			session.setAttribute("userPW", loginDTOTest.getUserPW());
			
		}else {
			session.invalidate();
		}
		response.sendRedirect(request.getContextPath() + "/login.jsp");
		
		
	}
	
	
}

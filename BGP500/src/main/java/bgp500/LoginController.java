package bgp500;

import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

// 어노테이션 @WebServlet() 파라메터값으로 호출 시 해당 서블릿 동작
@WebServlet("/loginController")
public class LoginController extends HttpServlet {
	// 모든 서블릿은 HttpServlet을 상속받아야 함
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	private LoginDAO dao;
	private LoginDTO dto;
	
    public LoginController() {
        super();
        // TODO Auto-generated constructor stub
    }

    //서블릿이 처음 생성될 때 1번만 실행되는 초기화 메서드.
	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		
		dao = new LoginDAO();
		dto = new LoginDTO();
		
		// TODO Auto-generated method stub
	}
	
	// 클라이언트가 GET 방식 요청을 했을 때 실행되는 메서드 (http://---/loginController
	// GET 요청 방식은 보안이 브라우저에 히스토리가 남기때문에 보안에 취약함 
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		doProcess(request, response);
	}
	
	// 클라이언트가 POST 방식 요청을 했을 때 실행되는 메서드 (form 태그의 method 옵션)
	// POST 요청 방식은 대용량 데이터를 전송할 수 있고, 브라우저에 히스토리가 남지 않아 GET방식보다 안전하게 
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doProcess(request, response);
	};
	
	protected void doProcess(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException{
		// login.jsp에서 넘어오는 input 값 name
		String userid = request.getParameter("userid");
		String passwd = request.getParameter("passwd");
		
		dto.setUserID(userid);
		dto.setUserPW(passwd);
		
		HttpSession session = request.getSession(true);
		
		if("LOGIN".equals(request.getParameter("actionType"))) {
			dto.setLoginState("login");
			
			// DTO를 DAO에 전달하여 loginState상태를 업데이트하고 다시 받음
			dto = dao.loginAuth(dto);
			
			session.setAttribute("loginState", dto.getLoginState());
			session.setAttribute("userID", dto.getUserID());
			session.setAttribute("userPW", dto.getUserPW());
		} else {
			session.invalidate();
		}
		response.sendRedirect(request.getContextPath() + "/login.jsp");
	}
	

}

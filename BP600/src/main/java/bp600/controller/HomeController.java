package bp600.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// *.do 로 끝나는 요청 받
@WebServlet("*.do")
public class HomeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * 서블릿 생성자
     */
    public HomeController() {
        super();
        // 생성자 호출 
    }

	/**
	 * 
	 * 주소창에 입력하거나 링크 클릭 시 GET 방식으로 요청
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 실제 처리 메서드로 전달
		doProcess(request,response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 실제 처리 메서드로 전달
		doProcess(request,response);
	}
	

	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 요청 URI 가져오기
		String uri = request.getRequestURI();
		// 애플리케이션 경로 가져오기
		String contextPath = request.getContextPath();
		// 실제 요청 명령어 추출
		String command = uri.substring(contextPath.length());
		
		// 기본적으로 보여줄 메인 뷰 페이지
		String viewPage = "/WEB-INF/views/main/home.jsp";
		// 메인 화면 안에서 바뀌는 내용 영역
		String contentPage = "/WEB-INF/views/contents/home_main.jsp";
		
		// 요청에 따라 보여줄 내용 페이지 결정
		switch(command) {
			case "/home.do":
				contentPage = "/WEB-INF/views/contents/home_main.jsp";
				break;
				
			case "/menu1.do" :
				contentPage = "/WEB-INF/views/contents/main_sub1.jsp";
				break;
			case "/menu2.do" :
				contentPage = "/WEB-INF/views/contents/main_sub2.jsp";
				break;
			
			// 위에 해당하지 않는 URL이면 404 페이지 보여줌
			default :
				contentPage = "/WEB-INF/views/errors/404.jsp";
				break;
		}
		
		// contentPage에 사용할수 있게 request에 저장 
		request.setAttribute("contentPage", contentPage);
		
		// 실제로 화면 출력
		request.getRequestDispatcher(viewPage).forward(request,response);		
	}
}

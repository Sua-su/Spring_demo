<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<main>
	<h1>JSP 종합 실습 페이지</h1>
	<hr/>
	
	<%!
		String[] members = {"홍길","박철수","이진주","김살철"};
		int num1 =10;
		
		int calc(int num2) {
			return num1 + num2;
		}
	
	%>
	
	
	<h3>1. JSP주석</h3>
	<!-- HTML 주석 : 화면에 안보이고 소스 보기엔보임 -->
	<%-- JSP 주석 : 화면과 소스 둘다 보이지 않음 --%>
	
	<h3>
		2. calc(20) 메서드 실행 결과 :
		<%=calc(20)%>
	
	</h3>
	
	<h3>3. include: hello.jsp</h3>
	<%@ include file ="/WEB-INF/views/etc/hello.jsp"%>
	
	<h3>4. 스크립트(배열 데이터 출력)</h3>
	<sub>
		<ul>
			<%
				for (String name : members) {
			%>
				<li><%=name%></li>
			<%
				}
			%>
		</ul>
	</sub>

</main>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<header>
    <div>
        <%-- 클릭하면 홈 화면으로 이동하는 로고 이미지 --%>
        <a href="home.do">
            <%-- ${pageContext.request.contextPath} : 현재 애플리케이션 경로 /assets/img/logo.png : 로고 이미지 위치 --%>
            <img src="${pageContext.request.contextPath}/assets/img/logo.png" alt="Logoimg">
        </a>
    </div>
    
    <div>
       
        <h1 class="shine-text">백엔드프로그래밍#600</h1>
    </div>
    
    <nav>
      
        <ul>
            <li><a href="menu1.do">JSP종합실습</a></li>
            <li><a href="menu2.do">계산기 실습</a></li>
            <li><a href="menu3.do">계산기(액션태그)</a></li>
            <li><a href="menu4.do">JSTL/EL</a></li>
        </ul>
    </nav>
    
    <form class="login-form">
        <input class="login-input" type="text" placeholder="아이디">
        <input class="login-input" type="password" placeholder="비밀번호">
        <button class="login-btn" type="submit">로그인</button>
        <button class="button">회원가입</button>
    </form>
</header>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 목록</title>
</head>
<body>
	<h2>BP 800 Practice : MVC(모델-뷰-컨트롤러)패턴 실습</h2><p>
	<h3>뷰 - 컨트롤러 - 서비스 - DAO with DTO </h3><p>
	<h3>DB사용 X, 상품등록/수정/삭제 기능 없음</h3><p>
	<h3>페이징 기능/ 조건 검색 기능 없음</h3><o>
	
	<h2>상품 목록</h2>
	<hr/>
	<h3>맥주리스트</h3><p/>
	
	<table border="1">
		<tr>
			<th>순번</th>
			<th>아이디</th>
			<th>카테고리</th>
			<th>상품명</th>
			<th>가격</th>
		</tr>
		<c:forEach var="p" varStatus = "i" items = "${products}">
			<tr>
				<td>${i.cont}</td>
		
	</table>

</body>
</html>
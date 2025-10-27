<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 목록</title>
</head>
<body>
	<h2>BP800 Practice : MVC(모델-뷰-컨트롤러)패턴 실습</h2><p>
	<h3>뷰 - 컨트롤러 - 서비스 - DAO with DTO</h3><p>
	<h3>DB사용 X, 상품등록/수정/삭제 기능 없음</h3><p>
	<h3>페이징 기능/조건 검색 기능 없음</h3><p>
	
	<h2>상품 목록</h2>
	<hr>
	<h3>맥주리스트</h3>
	
	<table border="1">
		<tr>
			<th>순번</th>
			<th>아이디</th>
			<th>카테고리</th>
			<th>상품명</th>
			<th>가격</th>
		</tr>
		<c:forEach var="p" varStatus="i" items="${products}">
			<tr>
				<td>${i.count}</td>
				<td>${p.id}</td>
				<td>${p.category}</td>
				<td><a href="./pcontrol?action=info&id=${p.id}">${p.name}</a></td>
				<td>${p.price}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>
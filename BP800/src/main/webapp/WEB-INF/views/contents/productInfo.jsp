<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 상세정보</title>
</head>
<body>
	<h2>상품 상세정보</h2>
	<hr>
	<ul>
		<li>상품아이디: ${p.id}</li>
		<li>상품코드: ${p.code}</li>
		<li>상품카테고리: ${p.category}</li>
		<li>상품명: ${p.name}</li>
		<li>상품국가명: ${p.country}</li>
		<li>가격: ${p.price}</li>
		<li>알콜도수: ${p.alcohol}</li>
		<li>상품설명: ${p.content}</li>
		<li>좋아요: ${p.like}</li>
		<li>싫어요: ${p.dislike}</li>
	</ul>
	<img src="${pageContext.request.contextPath}/assets/img/product/${p.imgFileName}" alt="상품이미지"
		onerror="this.onerror=null; this.src='${pageContext.request.contextPath}/assets/img/product/baseImage.png';" />
	<hr>
	<a href="./pcontrol?action=list">상품목록보기</a>
</body>
</html>
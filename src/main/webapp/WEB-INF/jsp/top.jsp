<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 점보트론 -->
	<div class="jumbotron text-center mb-0"> 
		<h2>Chandler 게시판 Example @~~@~~</h2> 
		<small><h10>여기는 가나다라마바사아자차카타파하 입니다.~~~!!</h10></small> 
	</div>
<!-- 네비게이션바 -->
	<nav class="navbar navbar-expand-sm navbar-dark bg-dark"> 
		<a href="<c:url value='/index'/>" class="navbar-brand">홈으로</a> 
		<!-- Toggle Button --> 
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar"> 
			<span class="navbar-toggler-icon"></span> 
		</button> 
		<div class="collapse navbar-collapse" id="collapsibleNavbar"> 
			<ul class="navbar-nav">
			 	
				<li class="nav-item"><a href="<c:url value='/book/list'/>" class="nav-link">책 목록</a></li>
				<li class="nav-item"><a href="<c:url value='/book/add'/>" class="nav-link">책 등록</a></li>
				<li class="nav-item"><a href="<c:url value='/member/list'/>" class="nav-link">멤버 목록</a></li> 
				<li class="nav-item"><a href="<c:url value='/member/add'/>" class="nav-link">멤버 등록</a></li> 
				<li class="nav-item"><a href="#" class="nav-link">어딘가</a></li> 
			</ul> 
		</div> 
	</nav>
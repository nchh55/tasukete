<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<!--
	Editorial by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>Editorial by HTML5 UP</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="resources/assets/css/main.css" />
<script>
		function login() {
			var userid = document.getElementById("userid");
			var userpwd = document.getElementById("userpwd");
			if (userid.value == '' || userpwd.value.length == 0) {
				alert('ID와 비밀번호를 입력하세요.');
				userid.focus();
				return; 
			}
			document.getElementById("home").submit();
		
		}
</script>   
	</head>
	<body class="is-preload">

		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Main -->
					<div id="main">
						<div class="inner">

							<!-- Header -->
								<header id="header">
									<a href="index.html" class="logo"><strong>Editorial</strong> by HTML5 UP</a>
									<ul class="icons">
										<li><a href="#" class="icon brands fa-twitter"><span class="label">Twitter</span></a></li>
										<li><a href="#" class="icon brands fa-facebook-f"><span class="label">Facebook</span></a></li>
										<li><a href="#" class="icon brands fa-snapchat-ghost"><span class="label">Snapchat</span></a></li>
										<li><a href="#" class="icon brands fa-instagram"><span class="label">Instagram</span></a></li>
										<li><a href="#" class="icon brands fa-medium-m"><span class="label">Medium</span></a></li>
									</ul>
								</header>

							
							<!-- form --> 
							<br> <br> <br>
							<c:if test="${sessionScope.loginId == null }"> 
								<h2>로그인</h2>  		 					
								<form id="home" method="post" action="login">
									<div class="row gtr-uniform">
										<div class="col-12">     
											<input type="text" name="userid" id="userid" value="" placeholder="아이디" /> 											  
										</div>   
										
										<div class="col-12">      
										<input type="password" name="userpwd" id="userpwd" value="" placeholder="비밀번호" />
										</div>
										
										<!-- Break -->
										<div class="col-12">
											<ul class="actions">
												<li><input type="button" value="로그인" class="primary" onclick = "login();"/></li> 
												<li><a href="signup" class="button big">회원가입</a></li>										
											</ul>
										</div>
									</div>
								</form>   
							</c:if>
							<c:if test="${sessionScope.loginId != null }"> 
								<table> 
								<tr> 
								<td>${sessionScope.loginName}님, 로그인중</td>
								</tr>
								</table> 
								<div class="col-12">
										<ul class="actions">
											<li><a href="signup" class="button big">회원정보수정</a></li>
											<li><a href="logout" class="button big">로그아웃</a></li>											
										</ul>
								</div> 
							</c:if> 
								 
								<section id="banner">
  									
								</section>

							
							<!-- Section -->
								<section>   
									<div class="posts">  
									</div>									
								</section>
						</div>
					</div>
					

				<!-- Sidebar -->
					<div id="sidebar">
						<div class="inner">

							<!-- Section -->
								<section>
									<header class="major">
										<h2>Need Of Help</h2> 
									</header>
									
									<!-- 로그인하면 사진 띄우는 창임 -->
									<!-- <div class="mini-posts"> 
										<article>
											<a href="#" class="image"><img src="images/pic07.jpg" alt="" /></a>
											<p>user(사용자)</p>
										</article>
									</div> -->
									
									<!-- <ul class="actions">  -->  
									<!-- 	<li>  -->
											 <!-- <a href="#" class="button">회원정보</a>
											<a href="#" class="button">로그아웃</a>  -->  
											<a href="login" class="button fit">로그인</a>  
										<!-- </li> -->
									<!-- </ul> -->
								</section>

							<!-- Menu -->
								<nav id="menu">
									<header class="major">
										<h2>메뉴</h2>
									</header>
									<ul>
										<li><a href="notice">공지사항</a></li>
										<li><a href="notice">요청목록</a></li>										
										<li><a href="notice">건의하기</a></li>
										<li><a href="notice">편의시설</a></li>
										<li><a href="#"></a></li> 
									</ul>
								</nav>
							
							<!-- Search -->       
								<section id="search" class="alt">
									<form method="post" action="#">
										<input type="text" name="query" id="query" placeholder="Search" />
									</form>
								</section>								
								
							<!-- Section -->
								<section>
									<header class="major">
										<h2>Get in touch</h2>
									</header>
									<p>Sed varius enim lorem ullamcorper dolore aliquam aenean ornare velit lacus, ac varius enim lorem ullamcorper dolore. Proin sed aliquam facilisis ante interdum. Sed nulla amet lorem feugiat tempus aliquam.</p>
									<ul class="contact">
										<li class="icon solid fa-envelope"><a href="#">information@untitled.tld</a></li>
										<li class="icon solid fa-phone">(000) 000-0000</li>
										<li class="icon solid fa-home">1234 Somewhere Road #8254<br />
										Nashville, TN 00000-0000</li>
									</ul>
								</section>

							<!-- Footer -->
								<footer id="footer">
									<p class="copyright">&copy; Untitled. All rights reserved. Demo Images: <a href="https://unsplash.com">Unsplash</a>. Design: <a href="https://html5up.net">HTML5 UP</a>.</p>
								</footer>
						</div>
					</div>
			</div>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>

	</body>

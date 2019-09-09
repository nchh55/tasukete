<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		function iDCheck() {
		alert("새창을 엽니다");
		window.open("idCheck", "mycheck", "width=500px, height=400px")
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

							
							<!-- Banner -->
								<section id="banner">
									<div class="content">
										<header>
											<h1>Hi, I’m Editorial<br />
											by HTML5 UP</h1>
											<p>A free and fully responsive site template</p>
										</header>
										<p>Aenean ornare velit lacus, ac varius enim ullamcorper eu. Proin aliquam facilisis ante interdum congue. Integer mollis, nisl amet convallis, porttitor magna ullamcorper, amet egestas mauris. Ut magna finibus nisi nec lacinia. Nam maximus erat id euismod egestas. Pellentesque sapien ac quam. Lorem ipsum dolor sit nullam.</p>
										<ul class="actions special">
											<li><a href="#" class="button big">Learn More</a></li>
										</ul>
									</div>
									<span class="image object">
										<img src="images/pic10.jpg" alt="" />
									</span>
								</section>

							
							<!-- Section -->
								<section>   
							<!-- Form --> 
								<h2>회원가입</h2>  

								<form method="post" action="#">
									<div class="row gtr-uniform">
										<div class="col-6 col-12-xsmall">    
											<input type="text" name="id" id="id" value="" placeholder="ID" /> 
											<a href="idcheck" class="button small" id="checkid" value="중복체크" onclick="iDCheck()">중복확인</a>  
										</div>   
										<div class="col-6 col-12-xsmall">         
										<input type="text" name="password" id="password" value="" placeholder="PASSWORD" /> 
										<input type="text" name="rpassword" id="rpassword" value="" placeholder="REPEAT PASSWORD" /> 
										</div> 
										<div class="col-12">  
										<input type="text" name="name" id="name" value="" placeholder="NAME" />
										</div>
										<div class="col-12">      
											BIRTH : &nbsp<input type="date" name="birth" id="birth" value="" placeholder="BIRTH" />
										</div>
										<div class="col-12">	
											<input type="email" name="email" id="email" value="" placeholder="EMAIL" />
										</div>
										<div class="col-12">	
											<input type="text" name="phone" id="phone" value="" placeholder="PHONE" /> 
										</div>
										<div class="col-12">	 
											<input type="text" name="address" id="address" value="" placeholder="ADDRESS" />
										</div>   
										<!-- Break -->
										<div class="col-12">
											<select name="demo-category" id="demo-category">
												<option value="">- Category -</option>
												<option value="1">Manufacturing</option>
												<option value="1">Shipping</option>
												<option value="1">Administration</option>
												<option value="1">Human Resources</option>
											</select>
										</div>
										<!-- Break -->
										<div> 
											장애 유무 <input type="radio" id="demo-priority-low" name="demo-priority" checked>
											<label for="demo-priority-low">YES</label>								
										</div>
										<div>  
											<input type="radio" id="demo-priority-normal" name="demo-priority">
											<label for="demo-priority-normal">No</label> 
										</div> &nbsp 
										
										<div>  
											임신 유무 <input type="radio" id="demo-priority-low2" name="demo-priority2" checked>
											<label for="demo-priority-low2">YES</label> 
										</div>
										<div>     
											<input type="radio" id="demo-priority-normal2" name="demo-priority2">
											<label for="demo-priority-normal2">No</label> 
										</div>   
										<!-- Break -->
										<div class="col-12">
											<textarea name="demo-message" id="demo-message" placeholder="Enter your message" rows="6"></textarea>
										</div>
										<!-- Break -->
										<div class="col-12">
											<ul class="actions">
												<li><input type="submit" value="Send Message" class="primary" /></li>
												<li><input type="reset" value="Reset" /></li>
											</ul>
										</div>
									</div>
								</form>  
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
										<li><a href="index">공지사항</a></li>
										<li><a href="notice">요청목록</a></li>										
										<li><a href="question">건의하기</a></li>
										<li><a href="convenience">편의시설</a></li>
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

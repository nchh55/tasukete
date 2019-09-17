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
<title>관리자 인덱스</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link rel="stylesheet" href="assets/css/main.css" />
      
<script>

	$(function(){
		
		
		$("#noticeMgmt").on("click", noticeMgmt);
	});


	function noticeMgmt(){  
		alert("테스트~"); 
		$(".content").load("admin/html/noticeList.html");
	}
	
/* 	function noticeMgmt(){
		alert("테스트1")
		$.ajax({
			url: 'noticeList'	
			,type: 'GET'
			,success: noticeList
		});
		
	} 
	
	function noticeList(resp){
		alert("테스트2");
/* 		var tag ='<table>'
			tag+='<tr>'
			//tag+='<th>공지 번호</th>'
			tag+='<th>공지 제목</th>'
			tag+='<th>작성자</th>'
			tag+='<th>작성날짜</th>'
			tag+='<tr>' 
	
		$.each(resp, function(index, item){
			tag+='<tr>'
			//tag+='<td>'+item.SEQ_NOTICE_NOTICESEQ+'</td>'
			tag+='<td>번호</td>'
			tag+='<td>'+item.notice_title+'</td>'
			tag+='<td>'+item.userid+'</td>'
			tag+='<td>번호</td>'
			tag+='<td>'+item.notice_date+'</td>'
			tag+='</tr>'
			
		});
			alert(tag);
			$("#noticeList").html(tag);
			var table = $("#noticeTable").html()
			$("#mainContent").html(table);
	
	}
 */

</script>
</head>
<body class="is-preload">

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
									
									</div>
								</section>

							<!-- Section -->
								<section>

									<div class="features">
										
									</div>
								</section>

							<!-- Section -->
								<section>
									<div class="posts" id="testtest">
										
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
								<div class="mini-posts">
									<article>
										<a href="#" class="image"><img src="images/pic07.jpg" alt="" /></a>
										<p>admin(관리자)</p>
									</article>
								</div>
								<ul class="actions">
									<li>
										<a href="#" class="button">회원정보</a>
										<a href="logout" class="button">로그아웃</a>
									</li>
								</ul>
							</section>
	
						<!-- Menu -->
							<nav id="menu">
								<header class="major">
									<h2>메뉴</h2>
								</header>
								<ul>
									<li><a href="#" id="noticeMgmt">공지 관리</a></li>
									<li>
										<span class="opener" id="userMgmt">회원 관리</span>
										<ul>
											<li><a href="#" id="userinfoMgmt">회원정보 관리</a></li>
											<li><a href="#" id="blackMgmt">블랙리스트 관리</a></li>
										</ul>
									</li>										
									<li><a href="#" id="matchingMgmt">매칭 관리</a></li>
									<li><a href="#" id="matchingStats">매칭 통계</a></li>
									<li><a href="#">예약 관리</a></li>
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
		<!-- <script src="assets/js/jquery.min.js"></script> -->
		<script src="assets/js/browser.min.js"></script>
		<script src="assets/js/breakpoints.min.js"></script>
		<script src="assets/js/util.js"></script>
		<script src="assets/js/main.js"></script>
		
</body>

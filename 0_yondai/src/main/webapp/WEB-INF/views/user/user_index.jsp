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
<title>유저화면</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link rel="stylesheet" href="assets/css/main.css" />
        
<script>
	//배너
	$(function(){		 
		$("#bannerList").on("click", bannerList);
	});	
	function bannerList(){
		$(".content").load("user/html/banner.html");     
		 $.ajax({ 
			 url: 'banner'	
			,type: 'GET'
			,success: banner
		});  		
	}
	//공지사항
	$(function(){		 
		$("#notice").on("click", notice);	
	});	
	function notice(){
		alert("공지사항"); 
		$(".content").load("user/html/noticeList.html");
		$.ajax({
			 url: 'noticeList'	
			,type: 'GET'
			,success: noticeList
		}); 		
	} 	
	function noticeList(resp){
				var tag = ''				
				$.each(resp, function(index, item){
					tag+='<tr>'
					tag+='<td>'+item.SEQ_notice_noticeseq+'</td>'    
					tag+='<td>'+item.notice_title+'</td>'
					tag+='<td>'+item.userid+'</td>'
					tag+='<td>'+item.notice_contents+'</td>'
					tag+='<td>'+item.notice_date+'</td>'
					tag+='</tr>'					
				}); 
					$("#notice_table").append(tag);    
	} 
	//건의하기
	$(function(){
		$("#suggestion").on("click", suggestion);	
	});	
	function suggestion() {
		alert("건의사항"); 
		$(".content").load("user/html/suggestionList.html"); 
		$.ajax({
			 url: 'suggestionList'	
			,type: 'GET'
			,success: suggestionList
		}); 
	} 
	function suggestionList(resp) {
			var tag ='<table>'	
			tag += '<tr>'
			tag+='<th>No</th>'
			tag+='<th>제목</th>'
			tag+='<th>작성자</th>'
			tag+='<th>접수일시</th>' 
			tag+='<th>처리일시</th>' 
			tag+='<th>진행상태</th>'
			tag+='</tr>'
	 		$.each(resp, function(index, item){
	 		tag += '<tr>'
			tag += '<td>'+item.suggestionseq+'</td>'  
			tag += '<td><a href="#" id="suggestionDetail">'+item.suggestion_title+'</a></td>' 
			tag += '<td>'+item.userid+'</td>'		
			tag += '<td>'+item.reception_date+'</td>'
			tag += '<td>'+item.completion_date+'</td>'
			tag += '<td>'+item.progress_flag+'</td>'
			tag += '</tr>'
		});		
			$("#suggestion_table").html(tag);  
	}
	 //건의하기목록디테일
	$(function(){
		$(document).on("click", "#suggestionDetail",suggestionDetail);	
	});	 
	function suggestionDetail() {
	alert("건의디테일"); 
	$(".content").load("user/html/suggestionDetail.html"); 
	/* $.ajax({
		 url: 'suggestionDetail'	
		,type: 'GET' 
		,success: suggestionDetail */
	};  
	//요청목록
	$(function(){
		$("#request").on("click", request);	
	});	
	function request() {
		alert("요청목록"); 
		$(".content").load("user/html/requestList.html");  
		$.ajax({
			 url: 'request'	
			,type: 'GET'
			,success: requestList
		}); 
	} 
	function requestList(resp) {
			var tag ='<table>'	
			tag += '<tr>'
			tag+='<th>No</th>'
			tag+='<th>회원아이디</th>'
			tag+='<th>지원자아이디</th>'
			tag+='<th>요청일시</th>'
			tag+='<th>요청상태</th>'
			tag+='<th>완료일시</th>' 
			tag+='</tr>' 
	 		$.each(resp, function(index, item){
	 		tag += '<tr>'
			tag += '<td>'+item.requestseq+'</td>'  
			tag += '<td>'+item.userid+'</td>' 
			tag += '<td>'+item.support_id+'</td>'		
			tag += '<td>'+item.request_date+'</td>'
			tag += '<td>'+item.request_flag+'</td>'
			tag += '<td>'+item.completion_date+'</td>'
			tag += '</tr>'
		});		
			$("#request_table").html(tag);  
	}
	//칭찬하기
	$(function(){
		$("#compliment").on("click", compliment);	
	});	
	function compliment() {
		alert("칭찬하기"); 
		$(".content").load("user/html/compliment.html");  
		$.ajax({
			 url: 'request'	
			,type: 'GET'
			,success: complimentList
		}); 
	}  
	function complimentList(resp) { 
			var tag ='<table>'	
			tag += '<tr>'
			tag+='<th>No</th>'
			tag+='<th>회원아이디</th>'
			tag+='<th>지원자아이디</th>'
			tag+='<th>요청일시</th>'
			tag+='<th>요청상태</th>'
			tag+='<th>완료일시</th>' 
			tag+='</tr>' 
	 		$.each(resp, function(index, item){
	 		tag += '<tr>'
			tag += '<td>'+item.requestseq+'</td>'  
			tag += '<td>'+item.userid+'</td>' 
			tag += '<td>'+item.support_id+'</td>'		
			tag += '<td>'+item.request_date+'</td>'
			tag += '<td>'+item.request_flag+'</td>'
			tag += '<td>'+item.completion_date+'</td>'
			tag += '</tr>'
		});		
			$("#compliment_table").html(tag);  
	}
	//신고하기
	$(function(){		 
	$("#report").on("click", report);
	});	
	function report(){
	alert("신고하기"); 
	$(".content").load("user/html/report.html");         
	$.ajax({ 
		 url: 'report'	
		,type: 'GET' 
		,success: report
	}); 		
}
	//건의자세히보기
	$(function(){		 
		$("#suggestionDetail2").on("click", suggestionDetail2);
	});	
	function suggestionDetail2(){
		alert("건의자세히");   
		$(".content").load("user/html/suggestionDetail2.html");       
		$.ajax({ 
			 url: 'suggestionDetail2'	
			,type: 'GET'
			,success: suggestionDetail2 
		}); 		
	}
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
								<li><a href="#" id="report" class="button large">신고하기</a></li>  
							</ul>
						</header>

					<!-- Banner -->
						<section id="banner">
							<div class="content">							
								<header>
									<h1>We want help you.<br />
									by YONDAI Company.</h1>
									<p>여러분들의 곁에서 도움을 드리겠습니다.</p>
								</header>
								<p>웹과 앱을 연동하여 어디에서든지 간편하게 도움을 요청하고 도움을 제공할 수 있는 커뮤니티입니다. <br>자신이 현재까지 요청한 목록을 볼 수 있으며 불편한 점이 있다면 24시간 언제든지 민원을 넣어서 개선시킬수 있습니다.<br>도움을 받은분들에게 평점을 주어서 실시간으로 좋은 요청자를 선별할 수 있고 가고싶은 지역의 주변 편의시설을 지도를 통해 간편하게 확인할 수 있습니다.</p>										
								<ul class="actions">
									<li><a href="#" class="button big">Learn More</a></li>
								</ul>
								
							</div>		 						
						</section>

					<!-- Section -->
						<section>
							<div class="features">
								
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
						<a href="#" id="bannerList"><h2>Need Of Help</h2></a>
					</header>
					<div class="mini-posts">
						<article> 
							<h3>${sessionScope.loginName} 님 환영합니다!!</h3>   
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
						<li><a href="#" id="notice">공지사항</a></li> 
						<li><a href="#" id="request">요청목록</a></li>										
						<li><a href="#" id="compliment">칭찬하기</a></li>
						<li><a href="#" id="suggestion">건의하기</a></li>
						<li><a href="#" id="comfort">편의시설</a></li>
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

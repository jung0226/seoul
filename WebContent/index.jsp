<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<meta name="viewport" content="width=device, initial-scale=1"/>
<link rel="stylesheet" href="bootstrap.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="bootstrap.js"></script>
<style>
	body>div:firstchild{
		width:800px;
		margin: 0 auto;
		
	}
	
	a:link, a:visited{
		text-decoration:none;
		color:gray;
	}
	a:hover{
		text-decoration:none;
		color:black;
	}
	.carousel-inner img{
		width:100%;
		height:350px;
	}
</style>
<script>
	$(function(){	
		var menu=['나의 서울', '전자 우편', '서울 소개', '시민 참여', '청사 안내']
	});
		
</script>
</head>
<body>
	<div class="container">
	<header style="background-color:pink">
		<form method="post" id="logFrm" action="a.jsp">
			<input type="text" name="userid" id="userid" placeholder="아이디"/>
			<input type="password" name="userpwd" id="userpwd" placeholder="비밀번호"/>
			<input type="submit" value="로그인"/>
			<a href="#">회원가입</a>
			<a href="#">고객센터</a>
		</form>
	</header>

	<nav><!-- 탭 메뉴 -->
	
	</nav>
	
	<section class="container">
		<div id="slideImg" class="carousel slide" data-ride="carousel" data-interval="2000"><!-- carousel -->
			<!-- 하단 컨트롤러-->
			<ul class="carousel-indicators">
				<li data-target="#slideImg" data-slide-to="0" class="active"></li>
				<li data-target="#slideImg" data-slide-to="1"></li>								
				<li data-target="#slideImg" data-slide-to="2"></li>								
				<li data-target="#slideImg" data-slide-to="3"></li>								
				<li data-target="#slideImg" data-slide-to="4"></li>								
				<li data-target="#slideImg" data-slide-to="5"></li>								
				<li data-target="#slideImg" data-slide-to="6"></li>							
				<li data-target="#slideImg" data-slide-to="7"></li>
			</ul>
			<!-- 이미지 목록 -->
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img src="img/banner1.jpg"/>
				</div>
				<div class="carousel-item">
					<img src="img/banner2.jpg"/>
				</div>
				<div class="carousel-item">
					<img src="img/banner3.jpg"/>
				</div>
				<div class="carousel-item">
					<img src="img/banner4.jpg"/>
				</div>
				<div class="carousel-item">
					<img src="img/banner5.jpg"/>
				</div>
				<div class="carousel-item">
					<img src="img/banner6.jpg"/>
				</div>
				<div class="carousel-item">
					<img src="img/banner7.jpg"/>
				</div>
				<div class="carousel-item">
					<img src="img/banner8.jpg"/>
				</div>
			</div>
			<!-- 좌우 컨트롤러 -->
			<a href="#slideImg" class="carousel-control-prev" data-slide="prev"><span class="carousel-control-prev-icon"></span></a>
			<a href="#slideImg" class="carousel-control-next" data-slide="next"><span class="carousel-control-next-icon"></span></a>
		</div><!-- carousel -->
	</section>
	<section>
	</section>
	<footer>
	</footer>
	</div>
</body>
</html>
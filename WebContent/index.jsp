<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SEOUL</title>

<meta name="viewport" content="width=device, initial-scale=1"/>
<link rel="stylesheet" href="api/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="api/bootstrap.min.js"></script>
<style>
	#divContent{
		width:800px;
		margin:0 auto;		
	}
	#loginDiv form{
		width:800px;
		height:24px;
		text-align:right;
	}
	#loginDiv a:link, #loginDiv a:visited, #loginDiv a:hover{
		text-decoration:none;
		color:gray;
	}
	
	#logoDiv{
		width:100%;
		height:100px;		
		text-align:center;
	}
	#logoDiv img{
		margin:32px;
	}
	
	/*네비게이션*/
	ul{
		list-style-type:none;
	}
	#menu ul, #menu li, #sub ul, #sub li{
		margin:0px;
		padding:0px;
	} 
	#menu{
		height:50px;
		color:#fff;
		background-color:#456;
		margin:0;
	}
	#menu>li{
		float:left;
		width:20%;
		text-align:center;
		margin:10px 0;
	}
	#sub{
		margin:0;
		padding:0;
		position:absolute;
		background-color:#456;
		border:1px solid gray;
	}
	#sub>li{
		padding:10px 0;
		text-align:center;
	}
	#sub a:link, #sub  a:visited{
		text-decoration: none;
		color:white;
	}
	#sub a:hover, #menu li:hover{
		color:#f00;
	}
	
	.carousel-inner img{		
		width:100%;
		height:350px;
	}
	
	
</style>
<script>
	$(function(){
		$('#navi>li').hover(function(){
			$(this).children('ul').css('display','block');
		},function(){
			$(this).children('ul').css('display','none');
		});
	});
</script>
</head>
<body>
<div id="divContent">
	<div id="loginDiv">
		<form method="post" id="logFrm "action="loginOk.jsp">
			<input type="text" name="userid" id="userid" placeholder="아이디"/>
			<input type="password" name="userpwd" id="userpwd" placeholder="비밀번호"/>
			<input type="submit" value="로그인"/>
			<a href="#">회원가입</a>
			<a href="#">고객센터</a>
		</form>
	</div>
	<div id="logoDiv">
		<a href="https://www.seoul.go.kr/main/index.jsp"><img src="img/seoul.png"/></a>
	</div>
	<!-- 메뉴 -->
	<div id="mainDiv">
		<header>GIRLSDAILY</header>
		<ul id="navi">
			<li><a href="#">OUTER</a>
				<!-- 서브메뉴 -->
				<ul>
					<li><a href="#">가디건</a></li>
					<li><a href="#">자켓&점퍼</a></li>
					<li><a href="#">베스트</a></li>
					<li><a href="#">코트</a></li>
					<li><a href="#">세일</a></li>
				</ul>
			</li>
			<li><a href="#">TOP</a>
				<ul>
					<li><a href="#">Tea</a></li>
					<li><a href="#">Cami</a></li>
					<li><a href="#">Knit</a></li>
					<li><a href="#">Shirt & Blouse</a></li>
				</ul>
			</li>
			<li><a href="#">DRESS</a>
				<ul>
					<li><a href="#">All</a></li>
					<li><a href="#">바캉스룩</a></li>
					<li><a href="#">SET</a></li>
				</ul>
			</li>
			<li><a href="#">BOTTOM</a>
				<ul>
					<li><a href="#">힐링투엘브</a></li>
					<li><a href="#">히든밴딩시리즈</a></li>
					<li><a href="#">스커트</a></li>
					<li><a href="#">팬츠</a></li>
				</ul>
			</li>
			<li><a href="#">SUMMER</a>
				<ul>
					<li><a href="#">HOLI스웸웨어</a></li>
					<li><a href="#">at 22C</a></li>
					<li><a href="#">바캉스룩</a></li>
				</ul>
			</li>
		</ul>
		<img src="../img/3.jpg"/>
	</div>
	<!-- 이미지 슬라이드 -->
	<div class="container">
		<!-- 											  화면전환 속도 -->
		<div id="slideImg" class="carousel slide" data-ride="carousel" data-interval="2000"><!-- carousel -->
			<!-- 하단 컨트롤러 -->
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
			<!-- 이미지 목록 만들기 -->
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img src="img/banner1.jpg"/>
					<!-- 이미지 위에 설명쓰기 -->
					<div class="carousel-caption">
						<h2>라이언</h2>
						<p>카카오 프렌즈 대장</p>
					</div>
				</div>
				<div class="carousel-item">
					<img src="img/banner2.jpg"/>
					<!-- 이미지 위에 설명쓰기 -->
					<div class="carousel-caption">
						<h2>스누피</h2>
						<p>생일파티</p>
					</div>
				</div>
				<div class="carousel-item">
					<img src="img/banner3.jpg"/>
					<!-- 이미지 위에 설명쓰기 -->
					<div class="carousel-caption">
						<h2>스누피2</h2>
						<p>지붕 위에</p>
					</div>
				</div>
				<div class="carousel-item">
					<img src="img/banner4.jpg"/>
					<!-- 이미지 위에 설명쓰기 -->
					<div class="carousel-caption">
						<h2>스누피3</h2>
						<p>바다</p>
					</div>
				</div>
				<div class="carousel-item">
					<img src="img/banner5.jpg"/>
					<!-- 이미지 위에 설명쓰기 -->
					<div class="carousel-caption">
						<h2>스누피3</h2>
						<p>바다</p>
					</div>
				</div>
				<div class="carousel-item">
					<img src="img/banner6.jpg"/>
					<!-- 이미지 위에 설명쓰기 -->
					<div class="carousel-caption">
						<h2>스누피3</h2>
						<p>바다</p>
					</div>
				</div>
				<div class="carousel-item">
					<img src="img/banner7.jpg"/>
					<!-- 이미지 위에 설명쓰기 -->
					<div class="carousel-caption">
						<h2>스누피3</h2>
						<p>바다</p>
					</div>
				</div>
				<div class="carousel-item">
					<img src="img/banner8.jpg"/>
					<!-- 이미지 위에 설명쓰기 -->
					<div class="carousel-caption">
						<h2>스누피3</h2>
						<p>바다</p>
					</div>
				</div>
			</div>
			<!-- 좌우 컨트롤러 -->
			<a href="#slideImg" class="carousel-control-prev" data-slide="prev"><span class="carousel-control-prev-icon"></span></a>
			<a href="#slideImg" class="carousel-control-next" data-slide="next"><span class="carousel-control-next-icon"></span></a>
		</div><!-- carousel -->	
	</div>
</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="com.bitcamp.freeboard.FreeboardDAO"%>
<%@page import="com.bitcamp.freeboard.FreeboardVO"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SEOUL</title>

<meta name="viewport" content="width=device, initial-scale=1"/>
<link rel="stylesheet" href="api/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="api/bootstrap.min.js"></script>

<script src="api/jquery-3.4.1.js"></script>
<script src="api/jquery.bxslider.js"></script>
<link rel="stylesheet" href="api/jquery.bxslider.css" type="text/css"/>
<style>
	
	#divContent{
		width:800px;
		margin:0 auto;		
	}
	#loginDiv{
		text-align:right;
	
	}
	#loginDiv form{
		width:800px;
		height:24px;
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
	body, ul, li{
		margin:0px;
		padding:0px;
	}
	ul{
		list-style-type:none;
	}
	#navDiv{
		width:800px;
		margin: 0 auto;
	}
	#navi a:link, #navi a:visited{
		text-decoration:none;
		color:#fff;
	}
	#navi a:hover{
		text-decoration:none;
		color:#f00;
	}
	
	#navi{
		height:50px;
		color:#fff;
		background-color:#456;
	}
	#navi li{
		text-align:center;
		line-height:50px;
		color:#fff;
		background-color:#456;
	}
	#navi>li{
		float:left;
		width:20%;	
		height:50px;	
	}
	#navi>li>ul{
		display:none;
		border:1px solid gray;
		position:relative;
		z-index:1000;		
	}
	/*bxslide*/
	#bxslider img{
		width:800px;
		height:450px;
	}
	/*게시판*/
	h1{
		color:gray;
		text-align:center;
	}
	
	#lst>li{
		float:left;
		line-height:35px;
		height:35px; 
		border-bottom:1px solid gray;
		width:13%;
	}
	/*체크박스*/
	#lst>li:nth-of-type(6n+1){
		width:7%;
	}
	/*등록일*/
	#lst>li:nth-of-type(6n-1){
		width:14%;
	}
	#lst>li:nth-of-type(6n+3){
		width:40%;
	}
	/* wordCut */
	.wordCut{
		white-space:nowrap;/*줄바꿈 안 함*/		
		overflow:hidden;/*넘침 숨기기*/
		text-overflow:ellipsis;/*넘친 부분을 ...으로 표시*/		
	}
	/*페이지 매기기*/
	#paging {
		overFlow:auto;
		width:800px;
	}
	#paging ul{
		overFlow:auto;
		height:80px;
	}
	#paging li{
		float:left;
		width:60px;
		text-align:center;
		font-size:1.3em;
	}
	.pagination{
		margin:10px 30%;
	}
</style>
<script>
	//메뉴
	$(function(){
		$('#navi>li').hover(function(){
			$(this).children('ul').css('display','block');
		},function(){
			$(this).children('ul').css('display','none');
		});
	
	
		//bxslide		
		$('#bxslider').bxSlider({
			mode: 'horizontal'
			, slideWidth:800
			, slideHeight:350
			, speed:500 //변환속도
			, auto:true //자동시작 (true, false(기본))
			, randomStart:true //시작슬라이드 랜덤(true, false)
			, captions:true //title속성의 값을 설명으로 표시한다.(true, false)
			, infiniteLoop: true //반복여부(true, false)
			, hideControlOnEnd: true//처음과 마지막에 컨트롤러 표시여부 설정(true, false)
			//easing
			, useCSS:true //easing사용여부 설정(true(easing안 함), false(easing사용))			
		});
	
		//체크박스
		$('.checkAll').click(function(){
			$('.ckbox').prop('checked',this.checked);
		});
	
	});
	
	
	
</script>
</head>
<body>
<div id="divContent">
	<div id="loginDiv">
	<%
		String logStatus = (String)session.getAttribute("logStatus");
		if(logStatus==null || logStatus.equals("")){ %>
		<form method="post" id="logFrm" action="loginOk.jsp">
			<input type="text" name="userid" id="userid" placeholder="아이디"/>
			<input type="password" name="userpwd" id="userpwd" placeholder="비밀번호"/>
			<input type="submit" value="로그인"/>
			<a href="signup.jsp">회원가입</a>
			<a href="center.jsp">고객센터</a>
		</form>
		<%}else if(logStatus!=null && logStatus.equals("Y")){ %>
		
			<%=session.getAttribute("username") %><a href="<%=request.getContextPath() %>/logout.jsp">로그아웃</a>
		<%} 
	%>
		
	</div>
	<div id="logoDiv">
		<a href="https://www.seoul.go.kr/main/index.jsp"><img src="img/seoul.png"/></a>
	</div>
	<!-- 메뉴 -->
	<div id="navDiv">
		<ul id="navi">
			<li><a href="#">나의서울</a>
			</li>
			<li><a href="#">전자우편</a>
			</li>
			<li><a href="#">서울소개</a>
				<ul>
					<li><a href="#">시청안내</a></li>
					<li><a href="#">서울의상징</a></li>
					<li><a href="#">서울의역사</a></li>
					<li><a href="#">서울정보</a></li>
				</ul>
			</li>
			<li><a href="#">시민참여</a>
				<ul>
					<li><a href="#">서울시민과의대화</a></li>
					<li><a href="#">시민의견</a></li>
					<li><a href="#">공모전</a></li>
					<li><a href="#">팬츠</a></li>
				</ul>
			</li>
			<li><a href="#">청사안내</a>
				<ul>
					<li><a href="#">조직도</a></li>
					<li><a href="#">시의회</a></li>
					<li><a href="#">자치구</a></li>
				</ul>
			</li>
		</ul>
	</div>
	<!-- bxslide -->
	<ul id="bxslider">
		<li><a href="#"><img src="img/banner1.jpg" title="Seoul Music Festival"/></a></li>
		<li><a href="#"><img src="img/banner2.jpg" title="SIBAC 2019"/></a></li>
		<li><a href="#"><img src="img/banner3.jpg" title="2019 서울전환도시 국제컨퍼런스"/></a></li>
		<li><a href="#"><img src="img/banner4.jpg" title="2019 다다다 발표대회"/></a></li>
		<li><a href="#"><img src="img/banner5.jpg" title="2019 서울인공지능챗본론"/></a></li>
		<li><a href="#"><img src="img/banner6.jpg" title="서울차 없는 날"/></a></li>
		<li><a href="#"><img src="img/banner7.jpg" title="Zero 제로페이 미국 캐나다 이벤트"/></a></li>
		<li><a href="#"><img src="img/banner8.jpg" title="GoGo 페스티벌"/></a></li>
	</ul>
	<!-- 게시판 -->
	
	<%
	FreeboardDAO dao = new FreeboardDAO();
	//--------------------------------------------------
	int totalRecord = dao.getTotalRecord();	//총 레코드 수
	int onePageRecord= 5;//한 페이지당 출력할 레코드 수	
	int nowPage=1;//현재 페이지 번호
	int totalPage=0; //총 페이지 수 
	int onePageNum =5;//한번에 표시할 페이지 수
	int startPage=1; //페이지 번호의 시작 번호
	//--------------------------------------------------
	//현재 페이지 정보 구하기
	String nowPageStr = request.getParameter("nowPage");
	if(nowPageStr != null){
		nowPage=Integer.parseInt(nowPageStr);
	}
	//홈 페이지 수 계산하기
	totalPage = (int)Math.ceil(totalRecord/(double)onePageRecord);
	//페이지번호의 시작 번호 구하기
	startPage = ((nowPage-1)/onePageNum*onePageNum)+1;
	
	//전체레코드 구하기
	List<FreeboardVO> list = dao.getAllRecord(nowPage, onePageRecord, totalPage, totalRecord);
	%>
	<div id="freeboard">
		<h1>자유게시판</h1>
		<input type="checkbox" value="전체선택" class="checkAll"/> 전체 선택
		<ul id="lst">
			<li></li>
			<li>번호</li>
			<li>제목</li>
			<li>글쓴이</li>
			<li>등록일</li>
			<li>조회수</li>
			<% for(int i=0; i<list.size(); i++){
				FreeboardVO vo = list.get(i);				
			%>
				<li><input type="checkbox" class="ckbox"/></li>
				<li><%=vo.getNo() %></li>
				<li class="wordCut"><a href="list.jsp?num=1"><%=vo.getSubject() %></a></li>
				<li><%=vo.getUserid() %></li>
				<li><%=vo.getWritedate() %></li>
				<li><%=vo.getHit() %></li>
			<%} %>
		</ul>	
	</div>
	<div id="paging">
			<ul class="pagination">
				<!-- 이전 페이지 -->				
				<% if(nowPage==1){ %>
					<li class="page-item disabled">
						<a href="#" class="page-link">prev</a>
				<%} else{%>
					<li class="page-item"><a href="index.jsp?nowPage=<%=nowPage-1%>" class="page-link">prev</a>
				<%} %>
				</li>
				<!-- 페이지 넘버 매기기 -->
				<% for(int p=startPage;p<startPage+onePageNum;p++){ 
					if(p<=totalPage){
						if(p==nowPage){
				%>
					<li class="page-item">
						<a href="index.jsp?nowPage=<%=p%>" style="color:red" class="page-link"><%=p %></a>
					</li> 
				<%		}else{%>
					<li class="page-item">
						<a href="index.jsp?nowPage=<%=p%>" class="page-link"><%=p %></a>
					</li>
				<%
						}
					}//if
				}//for %>
				<!-- 다음 페이지 -->
				<li class="page-item">
					<% if(nowPage<totalPage){//다음페이지가 없을 경우
					%>
						<a href="index.jsp?nowPage=<%=nowPage+1%>" class="page-link">next</a>
					<%}
					%>
				</li>
			</ul>
		</div>
	<!-- footer include -->
	<footer>
		<%@ include file="footer.jspf" %>
	</footer>
</div>
</body>
</html>
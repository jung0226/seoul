<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.Connection, java.sql.DriverManager" %>
<%@page import="java.sql.PreparedStatement, java.sql.ResultSet"%>
<%!
	//JDBC드라이브 로딩, DB연결
	public Connection getConnection(){
		Connection conn=null;
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String url = "jdbc:oracle:thin:@192.168.0.225:1521:xe";
			conn = DriverManager.getConnection(url,"scott","tiger");
		}catch(Exception e){
			System.out.println("DB연결에러 --> "+e.getMessage());
		}
		return conn;
	}
%>
<%
	//1. 데이터 서버로 가져온다. :request
	String userid = request.getParameter("userid");
	String userpwd = request.getParameter("userpwd");
	
	//1. 드라이브로딩	
	//2. DB연결
	Connection conn = getConnection();
	
	//3. Statement생성(sql)
	String sql = "select userid, username from register where userid=? and userpwd=?";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, userid);
	pstmt.setString(2, userpwd);
	
	//4. 실행: ResultSet
	ResultSet rs = pstmt.executeQuery();
	
	if(!rs.next()){//로그인 실패
%>
		<script>
			alert("로그인 실패하였습니다. 다시 시도하세요.");
			//location.href="<%= request.getContextPath()%>/response/login.html";
			history.back(); //history.go(-1);
		</script>
<%
	}else{//로그인 성공
		session.setAttribute("logStatus","Y");
		session.setAttribute("userid",rs.getString(1));
		session.setAttribute("username",rs.getString(2));
%>
		<script>
			alert("로그인 성공하였습니다. \n홈페이지로 이동합니다.");
			location.href="<%=request.getContextPath()%>/index.jsp";
		</script>
<%
	}
%>
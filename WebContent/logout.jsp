<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	//세션제거
	session.invalidate();
	response.sendRedirect(request.getContextPath()+"/index.jsp");

%>
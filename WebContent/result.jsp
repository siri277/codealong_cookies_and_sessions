<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Cookie</title>
</head>
<body>
<h1>Cookie from browser</h1>
<br>
<%
	Cookie[] ck = request.getCookies();
	out.print("Username"+ck[0].getValue());
	String password = (String)session.getAttribute("password");
	out.print(" password"+password);
%>
</body>
</html>
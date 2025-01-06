<%@ page import="java.util.GregorianCalendar" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Confirmacao</title>
</head>
<body>
	Aluno: <%= request.getParameter("nome") %>
	<br/>
	RGM: <%= request.getParameter("rgm") %>
	<br/>
	<p align="center">
	Ultima Atualização: 
	<%
		GregorianCalendar calendar = new GregorianCalendar();
		String am_pm;
		int hour = calendar.get(GregorianCalendar.HOUR);
		int minute = calendar.get(GregorianCalendar.MINUTE);
		int second = calendar.get(GregorianCalendar.SECOND);
		
		if(calendar.get(GregorianCalendar.AM_PM)==0){
			am_pm = "AM";
		}else{
			am_pm = "PM";
		}
		
		String CT = hour+":"+minute+":"+second+" "+am_pm;
		
		out.print(CT);
	%>
	</p>
</body>
</html>
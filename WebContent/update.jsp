<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import= "com.javaex.vo.PersonVo" %>
<%@ page import= "com.javaex.dao.PhoneDao" %>
<%@ page import = "java.util.List" %>
<%
int id = Integer.parseInt(request.getParameter("id")); 
	String name =request.getParameter("name");
	String hp =request.getParameter("hp");
	String company =request.getParameter("company");
	
	
	PersonVo personVo = new PersonVo(id,name,hp,company);
	
	PhoneDao phoneDao = new PhoneDao();
	int count=phoneDao.personUpdate(personVo);
	System.out.println(count);
	
	response.sendRedirect("http://localhost:8088/phonebook1/list.jsp");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>
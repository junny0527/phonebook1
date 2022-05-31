<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import= "com.javaex.vo.PersonVo" %>
<%@ page import= "com.javaex.dao.PhoneDao" %>
<%@ page import = "java.util.List" %>
<%
String name = request.getParameter("name");
	String hp = request.getParameter("hp");
	String company = request.getParameter("company");
	
	
	//Person 객체만들기
	PersonVo personVo = new PersonVo(name, hp, company);
	System.out.println(personVo);
	//Phone 객체만들기
	PhoneDao phoneDao = new PhoneDao();
	
	//PhoneDao의personInsert()를 이용해서 저장하기
	phoneDao.personInsert(personVo);
	
	
	
	List<PersonVo> personList = phoneDao.getPersonList();
	
	response.sendRedirect("http://localhost:8088/phonebook1/list.jsp");
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>전화번호부</h1>
	<h2>리스트-저장후</h2>
	
	<p>입력한 정보 내역입니다.</p>

	<% for(int i=0; i<personList.size(); i++){ %>
	<table border="1">
		<tr>
			<td>이름</td>
			<td><%= personList.get(i).getName() %></td>
		</tr>
		<tr>
			<td>핸폰</td>
			<td><%= personList.get(i).getHp() %></td>
		</tr>
		<tr>
			<td>회사</td>
			<td><%= personList.get(i).getCompany() %></td>
		</tr>
	</table>
	<br>
	<% } %>

</body>
</html>
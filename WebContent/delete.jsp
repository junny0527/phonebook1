<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import= "com.javaex.dao.PhoneDao" %>
<%@ page import= "com.javaex.vo.PersonVo" %>
<%@ page import = "java.util.List" %>


<%
int id = Integer.parseInt(request.getParameter("id"));
   
   PhoneDao phoneDao = new PhoneDao();

   PersonVo personVo = new PersonVo(id);
   System.out.println(personVo);

   int count = phoneDao.personDelete(personVo);
   System.out.println(count);
   
   List<PersonVo> personList = phoneDao.getPersonList();
   System.out.println(personList);
  
   //응답 리다이렉트
   response.sendRedirect("./list.jsp");
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
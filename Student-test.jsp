<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"  import="java.util.*, com.jsp.tagdemo.Student"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 

<%
		// creating some sample data(normally provided by the mvc)
		
		List<Student> data = new ArrayList<>();

		data.add(new Student("Aditya","Gupta",false));
		data.add(new Student("Anurag","Bansal",true));
		data.add(new Student("Naksh","Chandna",false));
		data.add(new Student("Ravish","Singla",true));
		

		pageContext.setAttribute("myStudents",data);
%>

   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<c:forEach var="tempStudent" items="${myStudents}">
		 
		 ${tempStudent.firstName},${tempStudent.lastName},${tempStudent.goldCustomer} <br>
	
	</c:forEach>


</body>
</html>
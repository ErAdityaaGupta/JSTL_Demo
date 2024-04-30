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

	<table border = "1">
		<tr>
			<th>First Name </th>
			<th>Last Name</th>
			<th>Gold Customer</th>
		</tr>
	
	

	<c:forEach var="tempStudent" items="${myStudents}">
		 <tr>
		 	<td>${tempStudent.firstName}</td>
		 	<td>${tempStudent.lastName}</td>
		 	<td>
		 		<c:if test="${tempStudent.goldCustomer}">
		 			Special Discount
		 		</c:if>
		 		
		 		<c:if test="${not tempStudent.goldCustomer}">
		 			-
		 		</c:if>
		 	</td>
		</tr>
	</c:forEach>

	</table>

</body>
</html>
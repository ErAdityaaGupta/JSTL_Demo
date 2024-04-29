<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c" %>


<%
		// creating some sample data which is normally done by the mvc
		
		String[] cities = {"Mumbai","Hisar","Faridabad","Delhi"};

		pageContext.setAttribute("myCities",cities);
%>

    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Foreach test</title>
</head>
<body>

	<c:forEach var="tempCity" items="${myCities}">
	
		${tempCity} <br>
	
	</c:forEach>

</body>
</html>
<%@ page language="java"
	contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
%>


<html>
	<head>
		<link rel="stylesheet" type="text/css" href="css/index.css">
	</head>

	<body>
		<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
		<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
		<c:import url="header.jsp" />
		<h1>Contact ${contact.name} successfully added!</h1>
		<div>
			<a href="http://localhost:8080/vnuk-record-mvc/read-contacts.jsp">
				Return !
			</a>
		</div>
		<c:import url="footer.jsp" />
	</body>
</html>
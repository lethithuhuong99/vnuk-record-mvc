<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	
		<link rel="stylesheet"  type="text/css" href="css/jquery-ui.css">
		<script type="text/javascript" src="js/jquery.js"></script>
		<script type="text/javascript" src="js/jquery-ui.js"></script>
		<link href="bootstrap/css/bootstrap.min.css" type="text/css" rel="stylesheet" />
		
        <meta charset="UTF-8">
        <title>Adding contacts</title>
    </head>

    <body>
    
    	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
		<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
		<%@ taglib tagdir="/WEB-INF/tags" prefix="vnuk" %>
        <h1>Add contacts</h1>

        <form action="addContact" method="POST">
           
            <vnuk:myNameField name="name" id="name" label="Name"/>
            <vnuk:myNameField name="address" id="address" label="Address"/>
            <vnuk:myNameField name="email" id="email" label="E-mail"/>
            <vnuk:myDateField name="date_of_birth" id="date-of-birth" label="Date of birth"/>
                        
            <input type="submit" value="Save" />
        </form>
		
</html>
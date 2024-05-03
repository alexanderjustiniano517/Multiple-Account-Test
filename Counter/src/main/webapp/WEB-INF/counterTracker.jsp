<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- New line below to use the JSP Standard Tag Library -->
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Current visit count</title>
        <!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<!-- YOUR own local CSS -->
<link rel="stylesheet" href="/css/style.css"/>
<!-- For any Bootstrap that uses JS -->
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<!-- JS external sheet -->
<script type="text/javascript" src="/js/script.js"></script>
    </head>
<body>

	<div class="container-left-aligned">
	    <h3>You have visited <a href="#">http://localhost:8080/</a> <c:out value= "${count}"/> times.</h3>
	    <a href="/">Test another visit?</a>
	    <br>
	    <br>
    	<br>
	    <a class="plusTwo" href= "plustwo">Plus Two?</a>
	    <br>
    	<br>
    	<br>
    	<a class= "reset" href= "reset">Reset Counter (This can not be undone!)</a>
	</div>
	
</body>
</html>
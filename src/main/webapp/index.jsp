<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.time.Year" %>
<!doctype html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Bootstrap ldemo</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
</head>

<body>
	<h1 class="">Welcome to GODZILLA GAME</h1>
	<h2>DOWNLOAD THE GAME HERE</h2>
	<a class="btn btn-warning btn-lg rounded-pill" href="${pageContext.request.contextPath}/download">DOWNLOAD</a>
	<a class="btn btn-warning btn-lg rounded-pill" href="./signup">SIGN UP</a>

	<footer class="fixed-bottom">
		<h3 class="text-center">Student (c) <% out.println(Year.now().getValue()); %></h3>
	</footer>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
		crossorigin="anonymous"></script>
</body>

</html>

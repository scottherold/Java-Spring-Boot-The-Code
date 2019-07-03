<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!-- JSTL library -->
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<!-- Twitter Bootstrap -->
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
		<title>Secret Code</title>
	</head>
	<body>
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-3 m-3 p-3 border border-rounded">
					<p class="text-danger text-center"><c:out value="${error}" /></p>
					<p class="text-center">What is the code?</p>
					<form method="POST" action="code">
						<div class="row m-2 justify-content-center">
							<div class="col-6-offset-3">
								<input type="text" name="password">
							</div>
						</div>
						<div class="row m-1 justify-content-center">
							<div class="col-6">
								<input type="submit" class="btn btn-light">
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</body>
</html>
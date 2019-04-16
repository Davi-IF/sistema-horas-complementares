<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url value="main?acao=LoginAluno" var="metodo"/>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<title>Login</title>
</head>
<body>

	<div class="container">
		<div class="jumbotron">
	
			<h2>Login Aluno</h2>
			<form action="${metodo}" method="post">
				Matricula<br>
				<input type="text" name="matricula"><br>
				Senha<br>
				<input type="password" name="senha"><br><br>
				<input type="submit" class="btn btn-success">
			</form>
		</div>
	</div>
</body>
</html>
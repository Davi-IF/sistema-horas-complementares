<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url value="main?acao=LoginAluno" var="metodo"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="${metodo}" method="post">
		Matricula<br>
		<input type="text" name="matricula"><br>
		Senha<br>
		<input type="password" name="senha"><br><br>
		<input type="submit">
	</form>
</body>
</html>
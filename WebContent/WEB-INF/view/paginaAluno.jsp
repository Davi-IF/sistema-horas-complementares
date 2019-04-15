<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url value="main?acao=CadastroAtividade" var="link" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3> Olá ${aluno.nome }</h3>
	
	Cadastre sua atividade
	
	<form action="${link }" method="post">
		Grupo <input type="number" min="1" max="6" name="grupo"><br>
		Nome <input type="text" name="nome"><br>
		Horas Totais <input type="number" min="1" name="horasTotais"><br>
		Tipo de Atividade <input type="text" name="tipo"><br>
		Documento <input type="file" name="documento"><br>
		<input type="hidden" name="aluno" value="${aluno.id}" ><br>
		
		<input type="submit">
	</form>
	 
</body>
</html>
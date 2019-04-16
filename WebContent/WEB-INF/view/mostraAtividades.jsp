<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>Olá ${aluno.nome }</h2>
	<table class="table table-dark table-striped">
	
		<tr>
			<th>Nome da atividade</th>
			<th>Nome do Aluno</th>
			<th>Grupo</th>
			<th>Tipo da atividade</th>
			<th>Horas Totais</th>
			<th>Horas Aproveitadas</th>
		</tr>
		<c:forEach items="${atividades}" var="atividade">
		
			<tr>
				<td>${atividade.nome }</td>
				<td>${atividade.aluno.nome }</td>
				<td>${atividade.grupo }</td>
				<td>${atividade.tipoAtividade }</td>
				<td>${atividade.horasTotais }</td>				
				<td>${atividade.horasAproveitadas }</td>	
			</tr>
		</c:forEach>
	
	
	</table>
</body>
</html>
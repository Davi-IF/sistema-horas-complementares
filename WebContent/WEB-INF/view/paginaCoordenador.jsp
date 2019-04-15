<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<style>
table, th, td {
  border: 1px solid black;
}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table>
	
		<tr>
			<th>Nome da atividade</th>
			<th>Nome do Aluno</th>
			<th>Grupo</th>
			<th>Tipo da atividade</th>
			<th>Horas Totais</th>
			<th>Horas Aproveitadas</th>
			<th>Aceitar</th>
			<th>Recusar</th>
		</tr>
		<c:forEach items="${atividades }" var="atividade">
		
			<tr>
				<td>${atividade.nome }</td>
				<td>${atividade.aluno.nome }</td>
				<td>${atividade.grupo }</td>
				<td>${atividade.tipoAtividade }</td>
				<td>${atividade.horasTotais }</td>				
				<td>${atividade.horasAproveitadas }</td>	
							
				<td><a href="">aceitar</a></td>
				<td><a href="">recusar</a></td>
			</tr>
		</c:forEach>
	
	
	</table>
</body>
</html>
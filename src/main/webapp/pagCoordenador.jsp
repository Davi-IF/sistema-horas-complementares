<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="shadow-lg mt-2 bg-white mx-auto" style="width: 100%;">
		<table class="table table-dark table-striped">
			<thead>
				<tr>
					<th>Nome Aluno</th>
					<th>Nome Atividade</th>
					<th>Horas Totais</th>
					<th>Grupo</th>
					<th>Tipo de Atividade</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${atividades}" var="atividade">
					<tr>
						<td><small> ${atividade.nomeAtividade} </small></td>
						<td><small> ${atividade.aluno} </small></td>
						<td><small> ${atividade.horasTotais} </small></td>
						<td><small> ${atividade.grupo} </small></td>
						<td><small> ${atividade.tipoAtividade} </small></td>
					</tr>
				</c:forEach>
		</table>
	</div>

</body>
</html>
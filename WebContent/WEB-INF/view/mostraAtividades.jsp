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
	<div class="container shadow-lg p-4">
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
	
	<button type="button" class="btn btn-success" data-toggle="collapse" data-target="#detalhes">
		Detalhes
	</button>
	  <div id="detalhes" class="collapse">
	  	<div class="container">
		  <h2>Detalhes por grupo</h2>
		  <ul class="list-group">
		    <li class="list-group-item">Grupo 1: ${tamanho1}/50 horas</li>
		    <li class="list-group-item">Grupo 2: ${tamanho2 }/20 horas </li>
		    <li class="list-group-item">Grupo 3: ${tamanho3 }/40 horas</li>
		   	<li class="list-group-item">Grupo 4: ${tamanho4 }/40 horas </li>
		  	<li class="list-group-item">Grupo 5: ${tamanho5 }/40 horas</li>
		    <li class="list-group-item">Grupo 6: ${tamanho6 }/30 horas </li>
		    <li class="list-group-item">Total de horas: ${tamanhoT }/100 horas</li>
		    <p>Progresso do aluno</p>
		    <div class="progress">
    			<div class="progress-bar progress-bar-striped progress-bar-animated bg-success" style="width:${tamanhoT}%">${tamanhoT}%</div>
  			</div>
		  </ul>
		</div>
	  </div>
	</div>
</body>
</html>
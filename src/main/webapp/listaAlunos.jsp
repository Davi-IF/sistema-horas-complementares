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
<title>Alunos Cadastrados</title>
</head>
<body>

	<nav class="navbar navbar-expand-sm bg-secondary navbar-dark">
		<ul class="navbar-nav">
			<a class="navbar-brand" href="#"> <img
				src="images/ifce-logo-editado.png" border="white" alt="Logo"
				style="width: 150px;">
			</a>
		</ul>
	</nav>

	<div class="shadow-lg mt-2 bg-white mx-auto" style="width: 100%;">
		<table class="table table-dark table-striped">
			<thead>
				<tr>
					<th>Nome</th>
					<th>Matricula</th>
					<th>RG</th>
					<th>CPF</th>
					<th>CEP</th>
					<th>Endereço</th>
					<th>Idade</th>
					<th>Sexo</th>
					<th>Curso</th>
					<th>Semestre</th>
					<th>Email</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${alunos}" var="aluno">
					<tr>
						<td><small> ${aluno.nome} </small></td>
						<td><small> ${aluno.matricula} </small></td>
						<td><small> ${aluno.rg} </small></td>
						<td><small> ${aluno.cpf} </small></td>
						<td><small> ${aluno.cep} </small></td>
						<td><small> ${aluno.endereco} </small></td>
						<td><small> ${aluno.idade} </small></td>
						<td><small> ${aluno.sexo} </small></td>
						<td><small> ${aluno.curso} </small></td>
						<td><small> ${aluno.semestre} </small></td>
						<td><small> ${aluno.email} </small></td>
					</tr>
				</c:forEach>
		</table>
	</div>
	<nav
		class="navbar navbar-expand-sm bg-secondary navbar-dark fixed-bottom">
		<ul class="navbar-nav">
			<a class="navbar-brand" href="#"> <img
				src="images/ifce-logo-editado.png" alt="Logo" style="width: 150px;">
			</a>
			<li class="nav-item active mt-2"><a class="nav-link" href="#">Por:Davi
					Nunes & Juliana Pinheiro</a></li>
		</ul>
	</nav>

</body>
</html>
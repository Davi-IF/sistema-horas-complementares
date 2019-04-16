<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url value="main?acao=LoginAluno" var="linkLogin"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
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
<title>Sistema de horas complementares</title>
<body>
	<nav class="navbar navbar-expand-sm bg-secondary navbar-dark">
		<ul class="navbar-nav">
			<a class="navbar-brand" href="#"> <img src="images/ifce-logo-editado.png"
				border="white" alt="Logo" style="width: 150px;">
			</a>
			<li class="nav-item active mt-1"><a class="nav-link"
				href="#">Inicio</a></li>

			<li class="nav-item active mt-1"><a class="nav-link"
				href="main?acao=CadastroAluno">Cadastro</a></li>
			</li>
			<li class="nav-item active mt-1">
			<a class="nav-link" href="${linkLogin }">Login</a></li>
		</ul>
	</nav>

	<div class="shadow-lg p-4 mb-4 bg-white mx-auto" style="width: 80%;">
		<h2>Bem vindo ao Sistema de Cadastro de Horas Complementares</h2><br>

		<p>Esse sistema foi criado com o objetivo de cadastrar horas extras curriculares dos alunos 
		do curso de Redes de Computadores do Instituto Federal do Ceará Campus Jaguaribe. 
		Nele o aluno poderá fazer o cadastro de seus certficados de acordo com cada grupo de 
		atividades e acompanhar o total de horas cadastradas. Com isso o nosso sistema visa garantir 
		a melhoria da vida acadêmica dos estudantes de redes de computadores.</p>
		<br>
	</div>

	<nav
		class="navbar navbar-expand-sm bg-secondary navbar-dark fixed-bottom">
		<ul class="navbar-nav">
			<a class="navbar-brand" href="#"> <img src="images/ifce-logo-editado.png"
				alt="Logo" style="width: 150px;">
			</a>
			<li class="nav-item active mt-2"><a class="nav-link" href="#">Por:Davi
					Nunes & Juliana Pinheiro</a></li>
		</ul>
	</nav>
</body>
</html>
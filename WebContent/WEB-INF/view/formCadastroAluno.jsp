<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url value="/main?acao=CadastroAluno" var="link" ></c:url>
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
<title>Cadastro Aluno</title>
</head>
<body>

	<div class="container shadow-lg p-5">
	
	
	<h3>Cadastro Aluno</h3>
	<form action="${link }" method="post">
	
		Nome <input type="text" name="nome"><br><br>
		Senha<input type="password" name="senha"><br><br>
		Matricula <input type="text" name="matricula"><br><br>
		CPF <input type="text" name="cpf"><br><br>
		RG <input type="text" name="rg"><br><br>
		Idade <input type="number" min="17" max="90" name="idade"><br><br>
		CEP <input type="text" name="cep"><br><br>
		Endereço <input type="text" name="endereco"><br><br>
		Sexo <input type="text" name="sexo"><br><br>
		Semestre <input type="number" min="1" max="6" name="semestre"><br><br>
		E-mail <input type="text" name="email"><br><br>
		<button type="submit" class="btn bg-success">Enviar</button>
		
	</form>
	</div>
</body>
</html>
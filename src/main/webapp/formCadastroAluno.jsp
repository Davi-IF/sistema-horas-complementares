<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url value="/cadastroAluno" var="link" />

<!DOCTYPE html>
<html>
	<head>
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
		<meta charset="UTF-8">
		<title>Cadastro Aluno</title>
	</head>
	<body>
		<h4 class="col-sm-4">Cadastramento do Aluno</h4><br>
			<form action="cadastroAluno" method="post" class="form-horizontal" name="form">

				<div class="form-group">
					<label class="control-label col-sm-2" for="nome">Nome:</label>
					<div class="col-sm-5">
						<input type="text" class="form-control" id="nome" placeholder="Digite Aqui">
					</div>				
				</div>
				
				<div class="form-group">
					<label class="control-label col-sm-2" for="matricula">Matricula:</label>
					<div class="col-sm-5">
						<input type="text" class="form-control" id="matricula" placeholder="Digite Aqui">
					</div>				
				</div>
				
				<div class="form-group">
					<label class="control-label col-sm-2" for="rg">RG:</label>
					<div class="col-sm-5">
						<input type="text" class="form-control" id="rg" placeholder="Digite Aqui">
					</div>				
				</div>
				
				<div class="form-group">
					<label class="control-label col-sm-2" for="cpf">CPF:</label>
					<div class="col-sm-5">
						<input type="text" class="form-control" id="cpf" placeholder="Digite Aqui">
					</div>				
				</div>
				
				<div class="form-group">
					<label class="control-label col-sm-2" for="idade">Idade:</label>
					<div class="col-sm-2">
						<input type="number" class="form-control" id="email">
					</div>				
				</div>
				
				<div class="form-group">
					<label class="control-label col-sm-2" for="sexo">Sexo:</label>
					<div class="col-sm-5">
						<input type="text" class="form-control" id="sexo" placeholder="Digite Aqui">
					</div>				
				</div>
				
				<div class="form-group">
					<label class="control-label col-sm-2" for="email">E-mail:</label>
					<div class="col-sm-5">
						<input type="email" class="form-control" id="email" placeholder="no-reply@exemple.com">
					</div>				
				</div>
				
				<div class="form-group">
					<label class="control-label col-sm-2" for="cep">CEP:</label>
					<div class="col-sm-5">
						<input type="text" class="form-control" id="cep" placeholder="00000-000">
					</div>				
				</div>
				
				<div class="form-group">
					<label class="control-label col-sm-2" for="endereco">Endereço:</label>
					<div class="col-sm-5">
						<input type="text" class="form-control" id="endereco" placeholder="Digite Aqui">
					</div>				
				</div>
				
				<div class="form-group">
					<label class="control-label col-sm-2" for="curso">Curso:</label>
					<select class="form-control col-sm-5" id="cursos">
						<option>Tecnologia em Redes de Computadores</option>
						<option>Licenciatura em Ciências Biologicas</option>
					</select>				
				</div>
				
				<div class="form-group">
					<label class="control-label col-sm-2" for="semestre">Semestre:</label>
					<select class="form-control col-sm-5" id="semestres">
						<option>1</option><option>2</option><option>3</option>
						<option>4</option><option>5</option><option>6</option>
						<option>7</option><option>8</option>
					</select>
				</div>
				
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<button type="submit" class="btn btn-default">Enviar</button>
					</div>				
				</div>
			</form> 
		</div>
	</body>
</html>
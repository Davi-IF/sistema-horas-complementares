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
<meta charset="UTF-8">
<title>Cadastro Aluno</title>
</head>
<body>

	<c:if test="${not empty listaDeErros}">
		<div class="alert alert-danger alert-dismissible fade show">
			<button type="button" class="close" data-dismiss="alert">&times;</button>
			<c:out value="${listaDeErros}"></c:out>
		</div>
	</c:if>
	
	<c:if test="${not empty DadosVazios}">
		<div class="alert alert-warning alert-dismissible fade show">
			<button type="button" class="close" data-dismiss="alert">&times;</button>
			<c:out value="${DadosVazios}"></c:out>
		</div>
	</c:if>

	<nav class="navbar navbar-expand-sm bg-secondary navbar-dark">
		<ul class="navbar-nav">
			<a class="navbar-brand" href="#"> <img src="images/ifce-logo-editado.png"
				border="white" alt="Logo" style="width: 150px;">
			</a>
			<li class="nav-item active mt-1"><a class="nav-link"
				href="paginaPrincipal.jsp">Inicio</a></li>

			<li class="nav-item active mt-1"><a class="nav-link"
				href="formCadastroAluno.jsp">Cadastro</a></li>
			</li>
			<li class="nav-item mt-1"><button class="btn btn-secondary "
					data-toggle="modal" data-target="#myModal">Login</button></li>
		</ul>
	</nav>


	<div class="modal" id="myModal">
		<div class="modal-dialog">
			<div class="modal-content">

				<!-- Modal Header -->
				<div class="modal-header">
					<h4 class="modal-title">Login</h4>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>
				<form action="" method="post">
					<!-- Modal body -->
					<div class="modal-body">
						<div class="form-group">
							<label class="control-label col-sm-2" for="matricula">Matricula:</label>
							<div class="col-sm-12 input-group input-group-sm mb-3">
								<input type="text" class="form-control" id="matricula"
									placeholder="Digite Aqui" name="matricula">
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-sm-2" for="senha">Senha:</label>
							<div class="col-sm-12 input-group input-group-sm mb-3">
								<input type="password" class="form-control" id="senha"
									placeholder="Digite Aqui" name="senha">
							</div>
						</div>

					</div>

					<!-- Modal footer -->
					<div class="modal-footer">
						<button type="submit" class="btn btn-success" data-dismiss="modal">Entrar</button>
						<a href="formCadastroAluno.jsp" class="ml-5 pl-3">Não tem
							cadastro?</a>
					</div>
				</form>
			</div>
		</div>
	</div>


	<div class="col-sm-12 bg-secondary ">
		<h2 class="text-white ml-2">Cadastramento do Aluno</h2>
	</div>
	<div class="shadow-lg p-4 mb-4 bg-white mx-auto" style="width: 60%;">
		<form action="cadastroAluno" method="post" class="form-horizontal"
			name="form">

			<div class="form-inline">
				<label class="control-label col-sm-2" for="nome">Nome:</label>
				<div class="col-sm-4 input-group input-group-sm mb-3">
					<input type="text" class="form-control" id="nome"
						placeholder="Digite Aqui" name="nome">
				</div>
				<label class="control-label col-sm-2" for="matricula">Matricula:</label>
				<div class="col-sm-4 input-group input-group-sm mb-3">
					<input type="text" class="form-control" id="matricula"
						placeholder="Digite Aqui" name="matricula">
				</div>
			</div>

			<div class="form-inline">
				<label class="control-label col-sm-2" for="rg">RG:</label>
				<div class="col-sm-4 input-group input-group-sm mb-3">
					<input type="text" class="form-control" id="rg"
						placeholder="Digite Aqui" name="rg">
				</div>
				<label class="control-label col-sm-2" for="cpf">CPF:</label>
				<div class="col-sm-4 input-group input-group-sm mb-3">
					<input type="text" class="form-control" id="cpf"
						placeholder="Digite Aqui" name="cpf">
				</div>
			</div>

			<div class="form-inline">
				<label class="control-label col-sm-2" for="senha">Senha:</label>
				<div class="col-sm-4 input-group input-group-sm mb-3">
					<input type="password" class="form-control" id="senha"
						placeholder="Digite Aqui" name="senha">
				</div>
				<label class="control-label col-sm-2" for="idade">Idade:</label>
				<div class="col-sm-4 input-group input-group-sm mb-3">
					<input type="number" class="form-control" min="17" max="100" id="email" name="idade">
				</div>
			</div>

			<div class="form-inline">
				<label class="control-label col-sm-2" for="email">E-mail:</label>
				<div class="col-sm-4 input-group input-group-sm mb-3">
					<input type="email" class="form-control" id="email"
						placeholder="no-reply@exemple.com" name="email">
				</div>
				<label class="control-label col-sm-2" for="cep">CEP:</label>
				<div class="col-sm-4 input-group input-group-sm mb-3">
					<input type="text" class="form-control" id="cep"
						placeholder="00000-000" name="cep">
				</div>
			</div>

			<div class="form-inline">
				<label class="control-label col-sm-2" for="endereco">Endereço:</label>
				<div class="col-sm-4 input-group input-group-sm mb-3">
					<input type="text" class="form-control" id="endereco"
						placeholder="Digite Aqui" name="endereco">
				</div>
				<label class="control-label col-sm-2" for="sexo">Sexo:</label> <select
					class="form-control col-sm-4 input-group input-group-sm mb-3"
					id="opcoesSexo" name="sexo">
					<option>Masculino</option>
					<option>Feminino</option>
				</select>
			</div>

			<div class="form-inline">
				<label class="control-label col-sm-2" for="curso">Curso:</label> <select
					class="form-control col-sm-4 input-group input-group-sm mb-3"
					id="cursos" name="curso">
					<option>Tecnologia em Redes de Computadores</option>
					<option>Licenciatura em Ciências Biologicas</option>
					</select>
				<label class="control-label col-sm-2" for="semestre">Semestre:</label>
				<div class="col-sm-4 input-group input-group-sm mb-3">
					<input type="number" class="form-control" min="1" max="8" id="semestre" name="semestre">
				</div>
			</div>

			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<button type="submit" class="btn bg-success">Enviar</button>
				</div>
			</div>
		</form>
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
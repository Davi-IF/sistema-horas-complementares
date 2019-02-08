<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url value="/cadastroAluno" var="link" />

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
	<nav class="navbar navbar-expand-sm bg-secondary navbar-dark">
		<ul class="navbar-nav">
			<a class="navbar-brand" href="#"> <img src="images/if.png"
				alt="Logo" style="width: 50px;">
			</a>
			<li class="nav-item active"><a class="nav-link"
				href="paginaPrincipal.jsp">Inicio</a></li>

			<li class="nav-item active"><a class="nav-link"
				href="formCadastroAluno.jsp">Cadastro</a></li>
			</li>
			<li class="nav-item"><button class="btn btn-secondary "
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
									placeholder="Digite Aqui">
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-sm-2" for="senha">Senha:</label>
							<div class="col-sm-12 input-group input-group-sm mb-3">
								<input type="password" class="form-control" id="senha"
									placeholder="Digite Aqui">
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
		<h2 class="text-white ml-2">
		Cadastramento do Aluno
		</h2>		
	</div>
	<div class="row">
		<div class="col"></div>
		<div class="col">
			<form action="cadastroAluno" method="post" class="form-horizontal"
				name="form">

				<div class="form-group">
					<label class="control-label col-sm-2" for="nome">Nome:</label>
					<div class="col-sm-12 input-group input-group-sm mb-3">
						<input type="text" class="form-control" id="nome"
							placeholder="Digite Aqui">
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-sm-2" for="matricula">Matricula:</label>
					<div class="col-sm-12 input-group input-group-sm mb-3">
						<input type="text" class="form-control" id="matricula"
							placeholder="Digite Aqui">
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-sm-2" for="rg">RG:</label>
					<div class="col-sm-12 input-group input-group-sm mb-3">
						<input type="text" class="form-control" id="rg"
							placeholder="Digite Aqui">
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-sm-2" for="cpf">CPF:</label>
					<div class="col-sm-12 input-group input-group-sm mb-3">
						<input type="text" class="form-control" id="cpf"
							placeholder="Digite Aqui">
					</div>
				</div>
				
				<div class="form-group">
					<label class="control-label col-sm-2" for="senha">Senha:</label>
					<div class="col-sm-12 input-group input-group-sm mb-3">
						<input type="password" class="form-control" id="senha"
							placeholder="Digite Aqui">
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-sm-2" for="idade">Idade:</label>
					<div class="col-sm-12 input-group input-group-sm mb-3">
						<input type="number" class="form-control" id="email">
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-sm-4" for="email">E-mail:</label>
					<div class="col-sm-12 input-group input-group-sm mb-3">
						<input type="email" class="form-control" id="email"
							placeholder="no-reply@exemple.com">
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-sm-2" for="cep">CEP:</label>
					<div class="col-sm-12 input-group input-group-sm mb-3">
						<input type="text" class="form-control" id="cep"
							placeholder="00000-000">
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-sm-2" for="endereco">Endereço:</label>
					<div class="col-sm-12 input-group input-group-sm mb-3">
						<input type="text" class="form-control" id="endereco"
							placeholder="Digite Aqui">
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-sm-2" for="sexo">Sexo:</label> <select
						class="form-control col-sm-12 input-group input-group-sm mb-3"
						id="opcoesSexo">
						<option>Masculino</option>
						<option>Feminino</option>
					</select>
				</div>

				<div class="form-group">
					<label class="control-label col-sm-2" for="curso">Curso:</label> <select
						class="form-control col-sm-12 input-group input-group-sm mb-3"
						id="cursos">
						<option>Tecnologia em Redes de Computadores</option>
						<option>Licenciatura em Ciências Biologicas</option>
					</select>
				</div>

				<div class="form-group">
					<label class="control-label col-sm-2" for="semestre">Semestre:</label>
					<select
						class="form-control col-sm-12 input-group input-group-sm mb-3"
						id="semestres">
						<option>1</option>
						<option>2</option>
						<option>3</option>
						<option>4</option>
						<option>5</option>
						<option>6</option>
						<option>7</option>
						<option>8</option>
					</select>
				</div>

				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<button type="submit" class="btn bg-success col-sm-4">Enviar</button>
					</div>
				</div>
			</form>
		</div>
		<div class="col"></div>
	</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<c:url value="/cadastroAtividade" var="cadastroHoras" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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

<title>${aluno.nome}</title>
</head>
<body>

	<nav class="navbar navbar-expand-sm bg-secondary navbar-dark">
		<ul class="navbar-nav">
			<a class="navbar-brand" href="paginaPrincipal.jsp"> <img
				src="images/ifce-logo-editado.png" border="white" alt="Logo"
				style="width: 150px;">
			</a>
			<li class="nav-item active mt-1"><a class="nav-link" href="#"
				data-toggle="modal" data-target="#dados">Meus Dados</a></li>

			<li class="nav-item active mt-1"><a class="nav-link" href="#">Meu
					Progresso</a></li>
			

			<li class="nav-item active mt-1"><a class="nav-link" href="#"
				data-toggle="modal" data-target="#atividades">
				Minhas Atividades</a></li>
			
		</ul>
	</nav>

	<div class="modal fade" id="dados">
		<div class="modal-dialog modal-xl">
			<div class="modal-content">

				<div class="modal-header">
					<h4 class="modal-title">Meus Dados</h4>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>

				
				<div class="modal-body">
					<p>Nome: ${aluno.nome}</p>
					<p>Matricula: ${aluno.matricula}</p>
					<p>RG: ${aluno.rg}</p>
					<p>CPF: ${aluno.cpf}</p>
					<p>Idade: ${aluno.idade}</p>
					<p>E-mail: ${aluno.email}</p>
					<p>CEP: ${aluno.cep}</p>
					<p>Endereço: ${aluno.endereco}</p>
					<p>Sexo: ${aluno.sexo}</p>
					<p>Curso: ${aluno.curso}</p>
					<p>Semestre: ${aluno.semestre}</p>
				
				</div>

				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
				</div>

			</div>
		</div>
	</div>
	
	<div class="modal fade" id="atividades">
		<div class="modal-dialog modal-xl">
			<div class="modal-content">

				<div class="modal-header">
					<h4 class="modal-title">Minha atividades</h4>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>

				
				<div class="modal-body">
					<ul>
					<c:forEach items="${aluno.atividades}" var="atividade">
						<li>
							<p>${atividade.nome}</p>
						</li>
					</c:forEach>
					</ul>
				</div>

				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
				</div>

			</div>
		</div>
	</div>


	<div class="container">
		<h3>Bem vindo</h3>
		<h5>Clique no grupo a qual você deseja cadastrar sua atividade</h5>
		<br> <a href="#grupo1" class="btn btn-dark"
			data-toggle="collapse"> Grupo 1</a> <a href="#grupo2"
			class="btn btn-dark" data-toggle="collapse"> Grupo 2</a> <a
			href="#grupo3" class="btn btn-dark" data-toggle="collapse"> Grupo
			3</a> <a href="#grupo4" class="btn btn-dark" data-toggle="collapse">
			Grupo 4</a> <a href="#grupo5" class="btn btn-dark" data-toggle="collapse">
			Grupo 5</a> <a href="#grupo6" class="btn btn-dark" data-toggle="collapse">
			Grupo 6</a> <br> <br>

		<div id="grupo1" class="collapse">
			<h6>ATIVIDADES DE INICIAÇÃO À PESQUISA E/OU À EXTENSÃO</h6>
			<p>O limite máximo de acumulação de horas em atividades de
				iniciação à pesquisa e/ou à extensão é de 50 horas.</p>

			<form action="${cadastroHoras}" method="post">

				<div class="form-inline">
					<label class="control-label col-sm-2">Matricula:</label>
					<div class="col-sm-2 input-group input-group-sm mb-3">
						<input type="text" class="form-control" placeholder="Digite Aqui"
							name="matricula">
					</div>
					<label class="control-label col-sm-2">Nome da Atividade:</label>
					<div class="col-sm-3 input-group input-group-sm mb-3">
						<input type="text" class="form-control" placeholder="Digite Aqui"
							name="atividade">
					</div>

					<label class="control-label col-sm-2">Horas da Atividade:</label>
					<div class="col-sm-1 input-group input-group-sm mb-3">
						<input type="number" class="form-control" name="horasAtividade">
					</div>
				</div>

				<div class="form-inline">
					<label class="control-label col-sm-2">Tipo da Atividade:</label> <select
						class="form-control col-sm-4 input-group input-group-sm mb-3"
						id="cursos" name="tipoAtividade">
						<option>Bolsa de iniciação científica</option>
						<option>Projeto social</option>
						<option>Curso de extensão</option>
						<option>Participação em grupo de estudo/pesquisa</option>
						<option>Participação como expositor ou debatedor, em
							evento técnico-científico</option>
					</select> <label class="control-label col-sm-2">Documento
						Comprobatório:</label>
					<div class="col-sm-4 input-group input-group-sm mb-3">
						<input type="file" class="form-control" name="documento">
					</div>
					<input type="hidden" value="1" name="grupo"> <input
						type="submit" class="btn btn-success">
				</div>
			</form>
		</div>

		<div id="grupo2" class="collapse">
			<h6>ATIVIDADES ARTÍSTICO-CULTURAIS E ESPORTIVAS</h6>

		</div>

		<div id="grupo3" class="collapse">
			<h6>ATIVIDADES DE PARTICIPAÇÃO E/OU ORGANIZAÇÃO DE EVENTOS</h6>
		</div>

		<div id="grupo4" class="collapse">
			<h6>EXPERIÊNCIAS LIGADAS À FORMAÇÃO PROFISSIONAL</h6>
		</div>

		<div id="grupo5" class="collapse">
			<h6>PRODUÇÃO TÉCNICA E/OU CIENTÍFICA</h6>
		</div>

		<div id="grupo6" class="collapse">
			<h6>VIVÊNCIAS DE GESTÃO</h6>
		</div>
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
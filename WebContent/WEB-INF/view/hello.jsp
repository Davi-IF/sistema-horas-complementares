<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
				<form action="${linkLogin}" method="post">
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
						<input type="submit" class="btn btn-success" value="Entrar">
						<a href="formCadastroAluno.jsp" class="ml-5 pl-3">Não tem
							cadastro?</a>
					</div>
				</form>
			</div>
		</div>
	</div>

	<div class="shadow-lg p-4 mb-4 bg-white mx-auto" style="width: 80%;">
		<h2>Bem vindo ao Sistema de Cadastro de Horas Complementares</h2>

		<p>Esse sistema foi criado com o objetivo de cadastrar horas extras curriculares dos alunos do curso de Redes de Computadores do Instituto Federal do Ceará Campus Jaguaribe. Nele o aluno poderá fazer o cadastro de seus certficados de acordo com cada grupo de atividades e acompanhar o total de horas cadastradas. Com isso o nosso sistema visa garantir a melhoria da vida acadêmica dos estudantes de redes de computadores.</p>
		<br>
		<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce
			fermentum augue vitae ipsum scelerisque cursus. Maecenas quis leo in
			nulla hendrerit tristique vitae id nibh. Aliquam facilisis metus
			justo, ut semper ex accumsan nec. Aenean id semper eros. Curabitur eu
			arcu vitae sapien gravida viverra. Aliquam in varius risus. Curabitur
			sed porttitor justo, quis rutrum neque. Nulla pretium, est nec
			molestie venenatis, urna dolor malesuada lacus, in suscipit ante</p>

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
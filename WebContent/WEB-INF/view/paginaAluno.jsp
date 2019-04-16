<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url value="main?acao=CadastroAtividade" var="metodo" />
<c:url value="main?acao=MostraAtividades" var="atividades" />
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<meta charset="UTF-8">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container shadow-lg p-4"> 
	<h1> Olá ${aluno.nome }</h1>
	
	<h2>Cadastre sua atividade</h2>
	
	
	<button type="button" class="btn btn-success" data-toggle="collapse" data-target="#grupo1">
		Grupo 1
	</button>
	<div id="grupo1" class="collapse">
	<form action="${metodo }" method="post">
		<h3>Grupo 1</h3> <input type="hidden" value="1" name="grupo">
		
		<div class="justify-content-around mb-3">

		Nome: <input type="text" name="nome">
		Horas Totais: <input type="number" min="1" name="horasTotais"><br><br>
		
		</div>
		<div class="justify-content-around mb-3">
		Tipo de Atividade:
		<input list="atividades1" name="tipo">
		<datalist id="atividades1">
		  <option value="1-Participacao em grupos de estudo/pesquisa">
		  <option value="2-Monitoria Institucional ou Voluntaria">
		  <option value="3-Bolsa de iniciacao cientifica">
		  <option value="4-Projeto social">
		  <option value="5-Projeto de extensao">
		  <option value="6-Curso de extensao">
		</datalist>
		
		Documento: <input type="file" name="documento"><br>
		<input type="hidden" name="aluno" value="${aluno.id}" ><br>
		</div>
		<input type="submit" class="btn btn-success">
		
	</form>
	</div>
	
	<button type="button" class="btn btn-success" data-toggle="collapse" data-target="#grupo2">
		Grupo 2
	</button>
	<div id="grupo2" class="collapse">
	<form action="${metodo }" method="post">
		<h3>Grupo 2</h3> <input type="hidden" value="2" name="grupo">
		
		<div class="justify-content-around mb-3">
		
		Nome <input type="text" name="nome"><br>
		Horas Totais <input type="number" min="1" name="horasTotais"><br>
		</div>
		<div class="justify-content-around mb-3">
		Tipo de Atividade
		<input list="1-atividades2" name="tipo">
		<datalist id="2-atividades2">
		  <option value="3-Exposição">
		  <option value="4-Visita a museu">
		  <option value="5-Peça de teatro">
		  <option value="6-Cine cultural">
		  <option value="7-Eventos esportivos">
		  <option value="8-Grupos folclóricos">
		  <option value="9-Sarau/Clube Literário">
		  <option value="10-Concertos">
		  <option value="11-Apresentação artística">
		  <option value="12-Organização de eventos artísticos ou esportivos">
		</datalist>
		<br>Documento <input type="file" name="documento"><br>
		<input type="hidden" name="aluno" value="${aluno.id}" ><br>
		</div>
		<input type="submit" class="btn btn-success">
	</form>
	</div>
	
	<button type="button" class="btn btn-success" data-toggle="collapse" data-target="#grupo3">
		Grupo 3
	</button>
	<div id="grupo3" class="collapse">
	<form action="${metodo }" method="post">
		<h3>Grupo 3</h3> <input type="hidden" value="3" name="grupo">
		
		<div class="justify-content-around mb-3">

		Nome: <input type="text" name="nome">
		Horas Totais: <input type="number" min="1" name="horasTotais"><br><br>
		</div>
		<div class="justify-content-around mb-3">
		Tipo de Atividade
		<input list="atividades3" name="tipo">
		<datalist id="atividades3">
		  <option value="1-Apresentação de palestra na área de atuação do curso">
		  <option value="2-Apresentação de minicurso na área de atuação do curso">
		  <option value="3-Apresentação de trabalho (artigo, resumo, pôster) em evento científico na área de atuação do curso">
		  <option value="4-Participação em palestra específica da área de atuação do curso">
		  <option value="5-Participação em minicursos específicos da área de atuação do curso">
		  <option value="6-Participação em eventos">
		  <option value="7-Organização de palestras ou eventos">
		  <option value="8-Participação em defesa de TCC">
		</datalist>
		<br>Documento <input type="file" name="documento"><br>
		<input type="hidden" name="aluno" value="${aluno.id}" ><br>
		</div>
		<input type="submit" class="btn btn-success">
		
	</form>
	</div>
	
	<button type="button" class="btn btn-success" data-toggle="collapse" data-target="#grupo4">
		Grupo 4
	</button>
	<div id="grupo4" class="collapse">
	<form action="${metodo }" method="post">
		<h3>Grupo 4</h3> <input type="hidden" value="4" name="grupo">
		
		<div class="justify-content-around mb-3">

		Nome: <input type="text" name="nome">
		Horas Totais: <input type="number" min="1" name="horasTotais"><br><br>
		</div>
		<div class="justify-content-around mb-3">
		Tipo de Atividade
		<input list="atividades4" name="tipo">
		<datalist id="atividades4">
		  <option value="1-Curso de aperfeiçoamento técnico">
		  <option value="2-Vivência profissional - área correlata ao curso">
		  <option value="3-Curso de língua estrangeira">
		  <option value="4-Disciplinas de outros cursos ou instituições de ensino superior">
		</datalist>
		<br>Documento <input type="file" name="documento"><br>
		<input type="hidden" name="aluno" value="${aluno.id}" ><br>
		</div>
		<input type="submit" class="btn btn-success">
		
	</form>
	</div>
	
	<button type="button" class="btn btn-success" data-toggle="collapse" data-target="#grupo5">
		Grupo 5
	</button>
	<div id="grupo5" class="collapse">
	<form action="${metodo }" method="post">
		<h3>Grupo 5</h3> <input type="hidden" value="5" name="grupo">
		<div class="justify-content-around mb-3">

		Nome: <input type="text" name="nome">
		Horas Totais: <input type="number" min="1" name="horasTotais"><br><br>
		</div>
		<div class="justify-content-around mb-3">
		Tipo de Atividade
		<input list="atividades5" name="tipo">
		<datalist id="atividades5">
		  <option value="1-Publicação de trabalho científico completo (artigo ou pôster)">
		  <option value="2-Publicação de trabalho científico (resumo simples ou expandido)">
		  <option value="3-Trabalho de Conclusão de Curso publicada em outro curso">
		  <option value="4-Publicação de livro ou capítulo de livro">
		  <option value="5-Publicação de textos em jornais, revistas, cartilhas educativas ou outros meios.">
		</datalist>
		<br>Documento <input type="file" name="documento"><br>
		<input type="hidden" name="aluno" value="${aluno.id}" ><br>
		</div>
		<input type="submit" class="btn btn-success">
		
	</form>
	</div>
	
	<button type="button" class="btn btn-success" data-toggle="collapse" data-target="#grupo6">
		Grupo 6
	</button>
	<div id="grupo6" class="collapse">
	<form action="${metodo }" method="post">
		<h3>Grupo 6</h3> <input type="hidden" value="6" name="grupo">
		
		<div class="justify-content-around mb-3">

		Nome: <input type="text" name="nome">
		Horas Totais: <input type="number" min="1" name="horasTotais"><br><br>
		</div>
		<div class="justify-content-around mb-3">
		Tipo de Atividade
		<input list="atividades6" name="tipo">
		<datalist id="atividades6">
		  <option value="1-Participação em representação estudantil (Centro Acadêmico)">
		  <option value="2-Participação em representação estudantil (Diretório Central de Estudantes)">
		  <option value="3-Participação em representação estudantil (colegiado)">
		  <option value="4-Participação em representação estudantil (comissões)">
		  <option value="5-Participação em Empresa Júnior como Presidente, Vice-presidente ou diretor">
		</datalist>
		<br>Documento <input type="file" name="documento"><br>
		<input type="hidden" name="aluno" value="${aluno.id}" ><br>
		</div>
		<input type="submit" class="btn btn-success">
		
	</form>
	</div>
	 <br><br>
	 <button class="btn btn-secondary">
	 	<a href="${atividades }&id=${aluno.id}">Atividades do aluno</a>
	 </button>
	 </div>
</body>
</html>
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
	<form action="${metodo }" method="post">
		<h3>Grupo 2</h3> <input type="hidden" value="2" name="grupo">
		Nome <input type="text" name="nome"><br>
		Horas Totais <input type="number" min="1" name="horasTotais"><br>
		Tipo de Atividade
		<input list="atividades2" name="tipo">
		<datalist id="atividades2">
		  <option value="Exposição">
		  <option value="Visita a museu">
		  <option value="Peça de teatro">
		  <option value="Cine cultural">
		  <option value="Eventos esportivos">
		  <option value="Grupos folclóricos">
		  <option value="Sarau/Clube Literário">
		  <option value="Concertos">
		  <option value="Apresentação artística">
		  <option value="Organização de eventos artísticos ou esportivos">
		</datalist>
		<br>Documento <input type="file" name="documento"><br>
		<input type="hidden" name="aluno" value="${aluno.id}" ><br>
		
		<input type="submit">
	</form>
	
	<form action="${metodo }" method="post">
		<h3>Grupo 3</h3> <input type="hidden" value="3" name="grupo">
		Nome <input type="text" name="nome"><br>
		Horas Totais <input type="number" min="1" name="horasTotais"><br>
		Tipo de Atividade
		<input list="atividades3" name="tipo">
		<datalist id="atividades3">
		  <option value="Apresentação de palestra na área de atuação do curso">
		  <option value="Apresentação de minicurso na área de atuação do curso">
		  <option value="Apresentação de trabalho (artigo, resumo, pôster) em evento científico na área de atuação do curso">
		  <option value="Participação em palestra específica da área de atuação do curso">
		  <option value="Participação em minicursos específicos da área de atuação do curso">
		  <option value="Participação em eventos">
		  <option value="Organização de palestras ou eventos">
		  <option value="Participação em defesa de TCC">
		</datalist>
		<br>Documento <input type="file" name="documento"><br>
		<input type="hidden" name="aluno" value="${aluno.id}" ><br>
		
		<input type="submit">
	</form>
	
	<form action="${metodo }" method="post">
		<h3>Grupo 4</h3> <input type="hidden" value="4" name="grupo">
		Nome <input type="text" name="nome"><br>
		Horas Totais <input type="number" min="1" name="horasTotais"><br>
		Tipo de Atividade
		<input list="atividades4" name="tipo">
		<datalist id="atividades4">
		  <option value="Curso de aperfeiçoamento técnico">
		  <option value="Vivência profissional - área correlata ao curso">
		  <option value="Curso de língua estrangeira">
		  <option value="Disciplinas de outros cursos ou instituições de ensino superior">
		</datalist>
		<br>Documento <input type="file" name="documento"><br>
		<input type="hidden" name="aluno" value="${aluno.id}" ><br>
		
		<input type="submit">
	</form>
	
	<form action="${metodo }" method="post">
		<h3>Grupo 5</h3> <input type="hidden" value="5" name="grupo">
		Nome <input type="text" name="nome"><br>
		Horas Totais <input type="number" min="1" name="horasTotais"><br>
		Tipo de Atividade
		<input list="atividades5" name="tipo">
		<datalist id="atividades5">
		  <option value="Publicação de trabalho científico completo (artigo ou pôster)">
		  <option value="Publicação de trabalho científico (resumo simples ou expandido)">
		  <option value="Trabalho de Conclusão de Curso publicada em outro curso">
		  <option value="Publicação de livro ou capítulo de livro">
		  <option value="Publicação de textos em jornais, revistas, cartilhas educativas ou outros meios.">
		</datalist>
		<br>Documento <input type="file" name="documento"><br>
		<input type="hidden" name="aluno" value="${aluno.id}" ><br>
		
		<input type="submit">
	</form>

	<form action="${metodo }" method="post">
		<h3>Grupo 6</h3> <input type="hidden" value="6" name="grupo">
		Nome <input type="text" name="nome"><br>
		Horas Totais <input type="number" min="1" name="horasTotais"><br>
		Tipo de Atividade
		<input list="atividades6" name="tipo">
		<datalist id="atividades6">
		  <option value="Participação em representação estudantil (Centro Acadêmico)">
		  <option value="Participação em representação estudantil (Diretório Central de Estudantes)">
		  <option value="Participação em representação estudantil (colegiado)">
		  <option value="Participação em representação estudantil (comissões)">
		  <option value="Participação em Empresa Júnior como Presidente, Vice-presidente ou diretor">
		</datalist>
		<br>Documento <input type="file" name="documento"><br>
		<input type="hidden" name="aluno" value="${aluno.id}"> <br>
		
		<input type="submit"/>
	</form>
	 
	 <a href="${atividades }&id=${aluno.id}">Atividades do aluno</a>
	 </div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url value="/main?acao=CadastroAluno" var="link" ></c:url>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<form action="${link }" method="post">
	
		Nome <input type="text" name="nome"><br>
		Senha <input type="password" name="senha"><br>
		Matricula <input type="text" name="matricula"><br>
		CPF <input type="text" name="cpf"><br>
		RG <input type="text" name="rg"><br>
		Idade <input type="number" min="17" max="90" name="idade"><br>
		CEP <input type="text" name="cep"><br>
		Endereço <input type="text" name="endereco"><br>
		Sexo <input type="text" name="sexo"><br>
		Semestre <input type="number" min="1" max="6" name="semestre"><br>
		E-mail <input type="text" name="email"><br>
		
		<input type="submit">
	</form>
	
</body>
</html>
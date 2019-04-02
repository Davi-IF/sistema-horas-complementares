package br.edu.ifce.sistema;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.caelum.stella.ValidationMessage;
import br.com.caelum.stella.validation.CPFValidator;
import br.com.caelum.stella.validation.InvalidStateException;

//Servlet Para Cadastramento do Aluno
@WebServlet("/cadastroAluno")
public class CadastroAlunoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	// Metodo doPost
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("Cadastrando novo Aluno");
		
		Banco banco = new Banco();
		Aluno aluno = new Aluno();
		
		String nome = request.getParameter("nome");
		aluno.setNome(nome);

		String matricula = request.getParameter("matricula");
		aluno.setMatricula(matricula);

		String cpf = request.getParameter("cpf");
		aluno.setCpf(cpf);
		
		try {
			String idadeString = request.getParameter("idade"); 
			if(idadeString == null) { idadeString = "1";} 
			int idade = Integer.parseInt(idadeString);
			aluno.setIdade(idade);
		}catch(NumberFormatException e) {
			e.printStackTrace();
			String mensagem = "Dados vazios";
			request.setAttribute("DadosVazios",mensagem );
			RequestDispatcher rd = request.getRequestDispatcher("/formCadastroAluno.jsp");
			rd.forward(request, response);
			return;
		}
		
		try {
			String semestreString = request.getParameter("semestre"); 
			
			if(semestreString == null) { semestreString = "1";} 
			int semestre = Integer.parseInt(semestreString);
			aluno.setSemestre(semestre);
		}catch(NumberFormatException e) {
			e.printStackTrace();
			String mensagem = "Dados vazios";
			request.setAttribute("DadosVazios",mensagem );
			RequestDispatcher rd = request.getRequestDispatcher("/formCadastroAluno.jsp");
			rd.forward(request, response);
			return;
		}
		
		String rg = request.getParameter("rg");
		aluno.setRg(rg);

		String cep = request.getParameter("cep");
		aluno.setCep(cep);

		String endereco = request.getParameter("endereco");
		aluno.setEndereco(endereco);

		String sexo = request.getParameter("sexo");
		aluno.setSexo(sexo);

		String curso = request.getParameter("curso");
		aluno.setCurso(curso);

		String email = request.getParameter("email");
		aluno.setEmail(email);

		
		

		CPFValidator validator = new CPFValidator();
		
		if(nome.isEmpty() || matricula.isEmpty() || cpf.isEmpty() || rg.isEmpty() || endereco.isEmpty() || cep.isEmpty() || sexo.isEmpty() || curso.isEmpty() || email.isEmpty()) {
			String mensagem = "Dados vazios";
			request.setAttribute("DadosVazios",mensagem );
			RequestDispatcher rd = request.getRequestDispatcher("/formCadastroAluno.jsp");
			rd.forward(request, response);
			return;
		}
	
		try {
			// logica de negocio ...
			validator.assertValid(cpf);
			
			// continua��o da l�gica de neg�cio ...
		} catch (InvalidStateException e) { // exception lan�ada quando o documento � inv�lido
			
		//Essa parte aqui que tou na duvida tem como me explicar 
			List<ValidationMessage> validationMessages = validator.invalidMessagesFor(cpf);
			request.setAttribute("listaDeErros", validationMessages );
			RequestDispatcher rd = request.getRequestDispatcher("/formCadastroAluno.jsp");
			rd.forward(request, response);
			return;
		}
		System.out.println("Cadastro feito!");
		banco.adiciona(aluno);
		
		response.sendRedirect("paginaPrincipal.jsp");

	}
}

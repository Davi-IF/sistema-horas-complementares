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

		Aluno aluno = new Aluno();
		
		String nomeAluno = request.getParameter("nome");
		aluno.setNome(nomeAluno);

		String matricula = request.getParameter("matricula");
		aluno.setMatricula(matricula);

		String cpf = request.getParameter("cpf");
		aluno.setCpf(cpf);
		
		
		try {
			int idade = Integer.parseInt(request.getParameter("idade"));
			aluno.setIdade(idade);
		}catch(NumberFormatException e) {
			String mensagem = "Dados vazios";
			request.setAttribute("DadosVazios",mensagem );
			RequestDispatcher rd = request.getRequestDispatcher("/formCadastroAluno.jsp");
			rd.forward(request, response);
			
		}
		
		try {
			int semestre = Integer.parseInt(request.getParameter("semestre"));
			aluno.setSemestre(semestre);
		}catch(NumberFormatException e) {
			String mensagem = "Dados vazios";
			request.setAttribute("DadosVazios",mensagem );
			RequestDispatcher rd = request.getRequestDispatcher("/formCadastroAluno.jsp");
			rd.forward(request, response);
			
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

		Banco banco = new Banco();
		banco.adiciona(aluno);

		CPFValidator validator = new CPFValidator();
		try {
			// logica de negocio ...
			validator.assertValid(cpf);
			
			// continuação da lógica de negócio ...
		} catch (InvalidStateException e) { // exception lançada quando o documento é inválido
			
		//Essa parte aqui que tou na duvida tem como me explicar 
			List<ValidationMessage> validationMessages = validator.invalidMessagesFor(cpf);
			request.setAttribute("listaDeErros", validationMessages );
			RequestDispatcher rd = request.getRequestDispatcher("/formCadastroAluno.jsp");
			rd.forward(request, response);
	}
		request.setAttribute("aluno", aluno.getNome());
		RequestDispatcher rd = request.getRequestDispatcher("/formCadastroAluno.jsp");
		rd.forward(request, response);

	}
}

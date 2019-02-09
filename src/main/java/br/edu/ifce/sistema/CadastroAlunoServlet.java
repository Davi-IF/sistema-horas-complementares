package br.edu.ifce.sistema;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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

			// continuacao da logica de negocio ...
		} catch (InvalidStateException e) { // exception lancada quando o documento e invalido

			// Essa parte aqui que tou na duvida tem como me explicar
			// request.setAttribute("aluno", aluno.getNome());
			RequestDispatcher rd = request.getRequestDispatcher("Aluno invalido");
			// rd.forward(request, response);
		}
		request.setAttribute("aluno", aluno.getNome());
		RequestDispatcher rd = request.getRequestDispatcher("/novoAlunoCriado.jsp");
		rd.forward(request, response);

	}
}

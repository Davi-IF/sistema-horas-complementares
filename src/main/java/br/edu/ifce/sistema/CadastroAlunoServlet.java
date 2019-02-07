package br.edu.ifce.sistema;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




//Servlet Para Cadastramento do Aluno
@WebServlet("/cadastroAluno")
public class CadastroAlunoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	//Metodo doPost
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
System.out.println("Cadastrando novo Aluno");
		
		String nomeAluno = request.getParameter("nome");
		Aluno aluno = new Aluno();
		aluno.setNome(nomeAluno);
		
		Banco banco = new Banco();
		banco.adiciona(aluno);
		
		request.setAttribute("aluno", aluno.getNome());
		RequestDispatcher rd = request.getRequestDispatcher("/novoAlunoCriado.jsp");
		rd.forward(request, response);
	}	

}

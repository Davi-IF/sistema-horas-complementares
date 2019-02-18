package br.edu.ifce.sistema;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/listaAluno")
public class ListaAlunosServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Banco banco = new Banco();
		
		List<Aluno> lista = banco.getAlunos();
		
		System.out.println(lista.get(0).getNome());
		
		request.setAttribute("alunos", lista);
		RequestDispatcher rd = request.getRequestDispatcher("/listaAlunos.jsp");
		rd.forward(request, response);
	}


}

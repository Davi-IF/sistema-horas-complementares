package br.edu.ifce.sistema;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String user = request.getParameter("matricula");
		String pass = request.getParameter("senha");
		
		Banco banco = new Banco();
		
		Aluno aluno = banco.pega("123456789"); 
		
		System.out.println(user+" "+pass);
		if(user.equals("admin") && pass.equals("admin")) {
			
			RequestDispatcher rd = request.getRequestDispatcher("/pagCoordenador");
			rd.forward(request, response);
		}else if(user.equals("user") && pass.equals("123")) {
			request.setAttribute("aluno", aluno);
			RequestDispatcher rd = request.getRequestDispatcher("/formCadastroHoras.jsp");
			rd.forward(request, response);
		} else {
			response.sendRedirect("paginaPrincipal.jsp");
		}	
	}

}

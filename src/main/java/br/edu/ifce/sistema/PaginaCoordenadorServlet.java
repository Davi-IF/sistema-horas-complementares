package br.edu.ifce.sistema;


import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.edu.ifce.sistema.Atividade;
import br.edu.ifce.sistema.Coordenador;

/**
 * Servlet implementation class PaginaCoordenadorServlet
 */
@WebServlet("/pagCoordenador")
public class PaginaCoordenadorServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Coordenador co = new Coordenador();
		
		List<Atividade> atividadeRecebidas = co.getAtividadesRecebidas();
		
		request.setAttribute("atividades", atividadeRecebidas);
		RequestDispatcher rd = request.getRequestDispatcher("/pagCoordenador.jsp");
		rd.forward(request, response);
	}

}

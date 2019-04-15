package br.edu.ifce.sishc.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.edu.ifce.sishc.acao.Acao;

@WebServlet("/main")
public class MainServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String nomeDaClasse = request.getParameter("acao");
		String nomeDaAcao = null;
		try {
			Class classe = Class.forName("br.edu.ifce.sishc.acao."+nomeDaClasse);
			Acao acao = (Acao) classe.newInstance();
			
			nomeDaAcao = acao.executa(request, response);
		} catch (ClassNotFoundException | InstantiationException | IllegalAccessException e) {
			e.printStackTrace();
		}
		
		String[] acoes = nomeDaAcao.split(":");
		
		System.out.println(acoes[0]);
		
		if(acoes[0].equals("forward")) {
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/view/"+acoes[1]);
			rd.forward(request, response);
		}else {
			response.sendRedirect(acoes[1]);
		}
	}

}

package br.edu.ifce.sistema;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CadastroAtividadeServlet
 */
@WebServlet("/cadastroAtividade")
public class CadastroAtividadeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Atividade atividade = new Atividade();
		
		Banco banco = new Banco();
		Coordenador co = new Coordenador();
		
		Aluno a = banco.pega(request.getParameter("matricula"));
		
		//atividade.setDocumento(request.getParameter("documento"));
		atividade.setGrupo(Integer.parseInt(request.getParameter("grupo")));
		atividade.setHorasTotais(Integer.parseInt(request.getParameter("horasAtividade")));
		atividade.setNome(request.getParameter("nome"));
		atividade.setTipoAtividade(request.getParameter("tipoAtividade"));
		atividade.setAluno(a);
		
		a.adicionaAtividade(atividade);
		co.adiciona(atividade);
		
		response.sendRedirect("formCadastroHoras.jsp");
	}

}

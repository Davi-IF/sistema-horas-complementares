package br.edu.ifce.sishc.acao;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.edu.ifce.sishc.modelo.Aluno;
import br.edu.ifce.sishc.modelo.Banco;

public class MostraAtividades implements Acao{
	
	@Override
	public String executa(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		Banco b = new Banco();
		Aluno a = b.getAluno(Integer.parseInt(request.getParameter("id")));
		
		request.setAttribute("atividades", a.getAtividades());
		request.setAttribute("aluno", a);
		
		return "forward:mostraAtividades.jsp";
	}

}

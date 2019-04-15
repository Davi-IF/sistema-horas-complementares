package br.edu.ifce.sishc.acao;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.edu.ifce.sishc.modelo.Atividade;
import br.edu.ifce.sishc.modelo.Coordenador;

public class PaginaCoordenador implements Acao {

	@Override
	public String executa(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		Coordenador c = new Coordenador();
		
		List<Atividade> atividades = c.getAtividadesTotais();
		request.setAttribute("atividades", atividades);
		
		return "forward:paginaCoordenador.jsp";
	}

}

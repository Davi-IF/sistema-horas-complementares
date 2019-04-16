package br.edu.ifce.sishc.acao;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.edu.ifce.sishc.modelo.Aluno;
import br.edu.ifce.sishc.modelo.Atividade;
import br.edu.ifce.sishc.modelo.Banco;
import br.edu.ifce.sishc.modelo.Coordenador;

public class AprovaAtividade implements Acao {

	@Override
	public String executa(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		Coordenador c = new Coordenador();
		Banco b = new Banco();
		Atividade a = c.getAtividade(Integer.parseInt(request.getParameter("chave")));
		Aluno al = b.getAluno(a.getAluno().getId());
		
		al.addAtividade(a);
		c.Aprova(a.getChave());
		
		List<Atividade> atividades = c.getAtividadesRecebidas();
		request.setAttribute("atividades", atividades);
		
		return "forward:paginaCoordenador.jsp";
	}

}

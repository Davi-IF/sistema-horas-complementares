package br.edu.ifce.sishc.acao;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.edu.ifce.sishc.modelo.Aluno;
import br.edu.ifce.sishc.modelo.Atividade;
import br.edu.ifce.sishc.modelo.Banco;
import br.edu.ifce.sishc.modelo.Coordenador;

public class CadastroAtividade implements Acao {

	@Override
	public String executa(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		Banco b = new Banco();
		Aluno a = b.getAluno(Integer.parseInt(request.getParameter("aluno")));
		Coordenador c = new Coordenador();
		
		Atividade at = new Atividade();
		at.setAluno(a);
		at.setDocumento("");
		at.setGrupo(Integer.parseInt(request.getParameter("grupo")));
		at.setHorasTotais(Integer.parseInt(request.getParameter("horasTotais")));
		at.setNome(request.getParameter("nome"));
		at.setTipoAtividade(request.getParameter("tipo"));
		
		c.adiciona(at);
		
		request.setAttribute("aluno", a);
		return "forward:paginaAluno.jsp";
	}

}

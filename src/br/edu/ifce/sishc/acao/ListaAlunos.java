package br.edu.ifce.sishc.acao;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.edu.ifce.sishc.modelo.Aluno;
import br.edu.ifce.sishc.modelo.Banco;

public class ListaAlunos implements Acao{

	@Override
	public String executa(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Banco b = new Banco();
		
		List<Aluno> lista = b.getAlunos();
		
		request.setAttribute("alunos", lista);
		return "forward:listaAlunos.jsp";
	}

}

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
		request.setAttribute("tamanho1", a.tamanhoList(a.getAtividadesGrupo1()));
		request.setAttribute("tamanho2", a.tamanhoList(a.getAtividadesGrupo2()));
		request.setAttribute("tamanho3", a.tamanhoList(a.getAtividadesGrupo3()));
		request.setAttribute("tamanho4", a.tamanhoList(a.getAtividadesGrupo4()));
		request.setAttribute("tamanho5", a.tamanhoList(a.getAtividadesGrupo5()));
		request.setAttribute("tamanho6", a.tamanhoList(a.getAtividadesGrupo6()));
		request.setAttribute("tamanhoT", a.tamanhoList(a.getAtividades()));
		return "forward:mostraAtividades.jsp";
	}

}

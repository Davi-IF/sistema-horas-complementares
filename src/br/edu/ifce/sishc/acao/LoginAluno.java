package br.edu.ifce.sishc.acao;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.edu.ifce.sishc.modelo.Aluno;
import br.edu.ifce.sishc.modelo.Banco;

public class LoginAluno implements Acao {

	@Override
	public String executa(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String matricula = request.getParameter("matricula");
		String senha = request.getParameter("senha");
		
		Banco b = new Banco();
		
		Aluno a = b.autenticaAluno(matricula, senha);
		
		if(a.equals(null)) {
			return "forward:loginAluno.jsp";
		}else {
			request.setAttribute("aluno", a);
			return "forward:paginaAluno.jsp";
		}

	}

}

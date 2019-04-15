package br.edu.ifce.sishc.acao;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.caelum.stella.ValidationMessage;
import br.com.caelum.stella.validation.CPFValidator;
import br.com.caelum.stella.validation.InvalidStateException;
import br.edu.ifce.sishc.modelo.Aluno;
import br.edu.ifce.sishc.modelo.Banco;

public class CadastroAluno implements Acao {

	@Override
	public String executa(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			Banco b = new Banco();
			Aluno a = new Aluno();
			
			a.setNome(request.getParameter("nome"));
			a.setMatricula(request.getParameter("matricula"));
			a.setCpf(request.getParameter("cpf"));
			a.setRg(request.getParameter("rg"));
			a.setIdade(Integer.parseInt(request.getParameter("idade")));
			a.setSemestre(Integer.parseInt(request.getParameter("semestre")));
			a.setCep(request.getParameter("cep"));
			a.setEndereco(request.getParameter("endereco"));
			a.setSexo(request.getParameter("sexo"));
			a.setEmail(request.getParameter("email"));
			a.setSenha(request.getParameter("senha"));
			
			System.out.println("Cadastro feito!");
			
			b.adiciona(a);
			
			request.setAttribute("aluno", a);
			return "forward:paginaAluno.jsp";
		}catch(NumberFormatException | NullPointerException e) {
			return "forward:formCadastroAluno.jsp";
		}
		
	}

}

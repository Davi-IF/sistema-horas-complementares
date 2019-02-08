package br.edu.ifce.sistema;

import java.util.ArrayList;
import java.util.List;

public class Banco {
	
	private static List<Aluno> alunos = new ArrayList<Aluno>();

	public void adiciona(Aluno aluno) {
		alunos.add(aluno);
	}

}

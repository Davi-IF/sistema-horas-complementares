package br.edu.ifce.sistema;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class Banco {
	private static List<Aluno> listaDeAluno = new ArrayList<Aluno>();
	private static int idAlunos = 1;
	
	static {
		Aluno a = new Aluno("José Silva", "123456789", "000.000.000.00", "00000000-4", 20, "00000-000",
				"Rua X", "Masculino", "RDC", 4, "jose@ifce.edu.br", "123");
		a.setId(idAlunos++);
		Banco.listaDeAluno.add(a);
	}
	
	public void adiciona(Aluno aluno) {	
		aluno.setId(idAlunos++);
		listaDeAluno.add(aluno);
	}
	
	public Aluno pega(String matricula) {
		Iterator<Aluno> it = getAlunos().iterator();

		while (it.hasNext()) {
			Aluno a = it.next();
			if (a.getMatricula().equals(matricula)) {
				return a;
			}
		}

		return null;
	}
	
	public List<Aluno> getAlunos(){
		return Banco.listaDeAluno;
	}
		
		
}

package br.edu.ifce.sishc.modelo;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class Banco {
	
	private static List<Aluno> listaDeAlunos = new ArrayList<Aluno>();
	private static int chaveAlunos = 1;
	
	static {
		Aluno a = new Aluno("josé", "1234", "1234", "1234");
		a.setId(chaveAlunos++);
		Banco.listaDeAlunos.add(a);
	}
	
	public void adiciona(Aluno a) {
		a.setId(chaveAlunos++);
		listaDeAlunos.add(a);
	}
	
	public Aluno getAluno(int id) {
		Iterator<Aluno> it = listaDeAlunos.iterator();
		
		while(it.hasNext()) {
			Aluno a = it.next();
			if(a.getId() == id) {
				return a;
			}
		}
		return null;
	}

	public List<Aluno> getAlunos() {
		// TODO Auto-generated method stub
		return Banco.listaDeAlunos;
	}
}

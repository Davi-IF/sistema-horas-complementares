package br.edu.ifce.sistema;

import java.util.ArrayList;
import java.util.List;



public class Banco {
	private static List<Aluno> listaDeAluno = new ArrayList<Aluno>();

	public void adiciona(Aluno aluno) {
		
		listaDeAluno.add(aluno);
	}
	public List<Aluno>getCandidato(){
		return Banco.listaDeAluno;
	}
		

			
			
		
	}

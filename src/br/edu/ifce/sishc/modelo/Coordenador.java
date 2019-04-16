package br.edu.ifce.sishc.modelo;

import java.util.List;
import java.util.ArrayList;
import java.util.Iterator;

public class Coordenador {
	
	private static List<Atividade> atividadesTotais = new ArrayList<Atividade>();
	private static List<Atividade> atividadesRecebidas = new ArrayList<Atividade>();
	private static List<Atividade> atividadesAprovadas = new ArrayList<Atividade>();
	private static List<Atividade> atividadesReprovadas = new ArrayList<Atividade>();
	private static int chaveAtividade = 1;
	
	public List<Atividade> getAtividadesTotais() {
		return Coordenador.atividadesTotais;
	}
	public List<Atividade> getAtividadesRecebidas() {
		return Coordenador.atividadesRecebidas;
	}
	public List<Atividade> getAtividadesAprovadas() {
		return Coordenador.atividadesAprovadas;
	}
	public List<Atividade> getAtividadesReprovadas() {
		return Coordenador.atividadesReprovadas;
	}
	
	public Atividade getAtividade(int id) {
		Iterator<Atividade> it = atividadesRecebidas.iterator();
		
		while(it.hasNext()) {
			Atividade a = it.next();
			if(a.getChave() == id) {
				return a;
			}
		}
		
		return null;
	}
	
	public void Aprova(int id) {
		Atividade a = getAtividade(id);
		
		atividadesRecebidas.remove(a);
		atividadesAprovadas.add(a);
	}
	
	public void Desprova(int id) {
		Atividade a = getAtividade(id);
		
		atividadesRecebidas.remove(a);
		atividadesReprovadas.add(a);
	}
	
	public void adiciona(Atividade a) {
		a.setChave(chaveAtividade++);
		atividadesTotais.add(a);
		atividadesRecebidas.add(a);
	}
}

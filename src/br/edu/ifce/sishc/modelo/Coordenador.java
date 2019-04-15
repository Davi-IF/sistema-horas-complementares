package br.edu.ifce.sishc.modelo;

import java.util.List;
import java.util.ArrayList;

public class Coordenador {
	
	private static List<Atividade> atividadesTotais = new ArrayList<Atividade>();
	private static List<Atividade> atividadesRecebidas = new ArrayList<Atividade>();
	private static List<Atividade> atividadesAprovadas = new ArrayList<Atividade>();
	private static List<Atividade> atividadesReprovadas = new ArrayList<Atividade>();
	
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
	
	public void adiciona(Atividade a) {
		atividadesTotais.add(a);
		atividadesRecebidas.add(a);
	}
}

package br.edu.ifce.sishc.modelo;

public class Atividade {
	
	private int grupo;
	private String nome;
	private int horasTotais; 
	private int horasAproveitadas;
	private String tipoAtividade;
	private String documento;
	private Aluno aluno;
	
	public int getGrupo() {
		return grupo;
	}
	public void setGrupo(int grupo) {
		this.grupo = grupo;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public int getHorasTotais() {
		return horasTotais;
	}
	public void setHorasTotais(int horasTotais) {
		this.horasTotais = horasTotais;
	}
	public int getHorasAproveitadas() {
		if(this.horasAproveitadas == 0) {
			setHorasAproveitadas();
		}
		return horasAproveitadas;
	}
	public void setHorasAproveitadas() {
		this.horasAproveitadas = 1;
	}
	public String getTipoAtividade() {
		return tipoAtividade;
	}
	public void setTipoAtividade(String tipoAtividade) {
		this.tipoAtividade = tipoAtividade;
	}
	public String getDocumento() {
		return documento;
	}
	public void setDocumento(String documento) {
		this.documento = documento;
	}
	public Aluno getAluno() {
		return aluno;
	}
	public void setAluno(Aluno aluno) {
		this.aluno = aluno;
	}
	
}

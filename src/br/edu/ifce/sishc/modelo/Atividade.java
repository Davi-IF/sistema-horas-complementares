package br.edu.ifce.sishc.modelo;

public class Atividade {
	
	private int chave;
	private int grupo;
	private String nome;
	private int horasTotais; 
	private int horasAproveitadas;
	private String tipoAtividade;
	private String documento;
	private Aluno aluno;
	
	public Atividade(int gp, String nm, int hTotal, String tp, Aluno a) {
		this.grupo = gp;
		this.nome = nm;
		this.horasTotais = hTotal;
		this.tipoAtividade = tp;
		this.aluno = a;
		
		setHorasAproveitadas();
	}
	
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
		return this.horasAproveitadas;
	}
	
	public void defineHorasAproveitadas(int horas) {
		this.horasAproveitadas = horas;
	}
	public void setHorasAproveitadas() {
		switch (this.grupo) {
		case 1:
			String[] tp = tipoAtividade.split("-");
			if(tp[0].equals("1")) {
				this.horasAproveitadas = 40;
			}else if(tp[0].equals("2")) {
				this.horasAproveitadas = 40;
			}else if(tp[0].equals("3")) {
				this.horasAproveitadas = 40;
			}else if(tp[0].equals("4")) {
				this.horasAproveitadas = 10;
			}else if(tp[0].equals("5")) {
				this.horasAproveitadas = 20;
			}else if(tp[0].equals("6")) {
				this.horasAproveitadas = 10;
			}
			break;
		default:
			break;
		}
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

	public int getChave() {
		return chave;
	}

	public void setChave(int chave) {
		this.chave = chave;
	}
}

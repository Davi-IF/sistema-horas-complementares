package br.edu.ifce.sistema;


public class Atividade {

	private int grupo;
	private String nomeAtividade;
	private int horasTotais;
	private int horasAproveitadas;
	private String tipoAtividade;
	private String documento;
	private Aluno aluno;

	public Aluno getAluno() {
		return aluno;
	}

	public void setAluno(Aluno aluno) {
		this.aluno = aluno;
	}

	public int getGrupo() {
		return grupo;
	}

	public void setGrupo(int grupo) {
		this.grupo = grupo;
	}

	public String getNome() {
		return nomeAtividade;
	}

	public void setNome(String nome) {
		this.nomeAtividade = nome;
	}

	public int getHorasTotais() {
		return horasTotais;
	}

	public void setHorasTotais(int horasTotais) {
		this.horasTotais = horasTotais;
	}

	public int getHorasAproveitadas() {
		if (this.horasAproveitadas == 0) {
			setHorasAproveitadas();
		}

		return horasAproveitadas;
	}

	public void setHorasAproveitadas() {

		switch (this.grupo) {
		case 1:
			if(this.tipoAtividade.equals("Bolsa de iniciação cientifica")
			&& this.horasTotais > 40) {
				this.horasAproveitadas = 40;
			}
			break;
		case 2:

			break;
		case 3:

			break;
		case 4:

			break;
		case 5:

			break;
		case 6:

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

}

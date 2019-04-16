package br.edu.ifce.sishc.modelo;

import java.util.ArrayList;
import java.util.List;

public class Aluno {

	private List<Atividade> atividadesTotal = new ArrayList<Atividade>();
	private List<Atividade> atividadesGrupo1 = new ArrayList<Atividade>();
	private List<Atividade> atividadesGrupo2 = new ArrayList<Atividade>();
	private List<Atividade> atividadesGrupo3 = new ArrayList<Atividade>();
	private List<Atividade> atividadesGrupo4 = new ArrayList<Atividade>();
	private List<Atividade> atividadesGrupo5 = new ArrayList<Atividade>();
	private List<Atividade> atividadesGrupo6 = new ArrayList<Atividade>();
	
	

	private int id;
	private String nome;
	private String matricula;
	private String cpf;
	private String rg;
	private int idade;
	private String cep;
	private String endereco;
	private String sexo;
	private int semestre;
	private String email;
	private String senha;

	public Aluno() {

	}

	public Aluno(String nome, String matricula, String cpf, String senha) {
		this.nome = nome;
		this.matricula = matricula;
		this.cpf = cpf;
		this.senha = senha;
	}

	public void addAtividade(Atividade a) {
		switch (a.getGrupo()) {
		case 1:
			if(tamanhoList(atividadesGrupo1) < 50) {
				if(a.getHorasAproveitadas()+tamanhoList(atividadesGrupo1) > 50) {
					a.defineHorasAproveitadas(50-tamanhoList(atividadesGrupo1));
				}
				atividadesGrupo1.add(a);
				addAtividadeTotal(a);
			}
			break;
		case 2:
			if(tamanhoList(atividadesGrupo2) < 20) {
				if(a.getHorasAproveitadas()+tamanhoList(atividadesGrupo2) > 20) {
					a.defineHorasAproveitadas(20-tamanhoList(atividadesGrupo1));
				}
				atividadesGrupo2.add(a);
				addAtividadeTotal(a);
			}
			break;
		case 3:
			if(tamanhoList(atividadesGrupo3) < 40) {
				if(a.getHorasAproveitadas()+tamanhoList(atividadesGrupo3) > 40) {
					a.defineHorasAproveitadas(40-tamanhoList(atividadesGrupo1));
				}
				atividadesGrupo3.add(a);
				addAtividadeTotal(a);
			}
			break;
		case 4:
			if(tamanhoList(atividadesGrupo4) < 40) {
				if(a.getHorasAproveitadas()+tamanhoList(atividadesGrupo4) > 40) {
					a.defineHorasAproveitadas(40-tamanhoList(atividadesGrupo1));
				}
				atividadesGrupo4.add(a);
				addAtividadeTotal(a);
			}
			break;
		case 5:
			if(tamanhoList(atividadesGrupo5) < 40) {
				if(a.getHorasAproveitadas()+tamanhoList(atividadesGrupo5) > 40) {
					a.defineHorasAproveitadas(40-tamanhoList(atividadesGrupo1));
				}
				atividadesGrupo5.add(a);
				addAtividadeTotal(a);
			}
			break;
		case 6:
			if(tamanhoList(atividadesGrupo6) < 30) {
				if(a.getHorasAproveitadas()+tamanhoList(atividadesGrupo6) > 30) {
					a.defineHorasAproveitadas(30-tamanhoList(atividadesGrupo1));
				}
				atividadesGrupo6.add(a);
				addAtividadeTotal(a);
			}
			break;

		default:
			break;
		}
	}

	public int tamanhoList(List<Atividade> list) {
		int tamanho = 0;

		for (Atividade a : list) {
			tamanho += a.getHorasAproveitadas();
		}

		return tamanho;
	}

	private void addAtividadeTotal(Atividade a) {
		atividadesTotal.add(a);
	}

	public List<Atividade> getAtividades() {
		return atividadesTotal;
	}
	
	

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getMatricula() {
		return matricula;
	}

	public void setMatricula(String matricula) {
		this.matricula = matricula;
	}

	public String getCpf() {
		return cpf;
	}

	public void setCpf(String cpf) {
		this.cpf = cpf;
	}

	public String getRg() {
		return rg;
	}

	public void setRg(String rg) {
		this.rg = rg;
	}

	public int getIdade() {
		return idade;
	}

	public void setIdade(int idade) {
		this.idade = idade;
	}

	public String getCep() {
		return cep;
	}

	public void setCep(String cep) {
		this.cep = cep;
	}

	public String getEndereco() {
		return endereco;
	}

	public void setEndereco(String endereco) {
		this.endereco = endereco;
	}

	public String getSexo() {
		return sexo;
	}

	public void setSexo(String sexo) {
		this.sexo = sexo;
	}

	public int getSemestre() {
		return semestre;
	}

	public void setSemestre(int semestre) {
		this.semestre = semestre;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}

	public List<Atividade> getAtividadesTotal() {
		return atividadesTotal;
	}

	public List<Atividade> getAtividadesGrupo1() {
		return atividadesGrupo1;
	}

	public List<Atividade> getAtividadesGrupo2() {
		return atividadesGrupo2;
	}

	public List<Atividade> getAtividadesGrupo3() {
		return atividadesGrupo3;
	}

	public List<Atividade> getAtividadesGrupo4() {
		return atividadesGrupo4;
	}

	public List<Atividade> getAtividadesGrupo5() {
		return atividadesGrupo5;
	}

	public List<Atividade> getAtividadesGrupo6() {
		return atividadesGrupo6;
	}
	
	
}

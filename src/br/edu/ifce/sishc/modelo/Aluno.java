package br.edu.ifce.sishc.modelo;

import java.util.ArrayList;
import java.util.List;

public class Aluno {
	
	private List<Atividade> atividades = new ArrayList<Atividade>();
	
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
		atividades.add(a);
	}
	
	public List<Atividade> getAtividades(){
		return atividades;
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
}

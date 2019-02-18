package br.edu.ifce.sistema;

import java.util.ArrayList;
import java.util.List;

public class Aluno {
	
	public List<Atividade> atividades = new ArrayList<Atividade>();
	
	//Atributos da classe Aluno
	private int id;
	private String nome;
	private String matricula;
	private String cpf;
	private String rg;
	private int idade;
	private String cep;
	private String endereco;
	private String sexo;
	private String curso;
	private int semestre;
	private String email;
	private String senha;
	
	public void adicionaAtividade(Atividade a) {
		atividades.add(a);
	}
	
	public List<Atividade> getAtividades(){
		return atividades;
	}
	
	public Aluno() {
		
	}
	
	public Aluno(String nome, String matricula, String cpf, String rg, int idade, String cep,
			String endereco, String sexo, String curso, int semestre, String email, String senha) {
		this.nome = nome;
		this.matricula = matricula;
		this.cep = cep;
		this.cpf = cpf;
		this.curso = curso;
		this.email = email;
		this.endereco = endereco;
		this.idade = idade;
		this.rg = rg;
		this.semestre = semestre;
		this.senha = senha;
		this.sexo = sexo;
	}
	
	public String getSenha() {
		return senha;
	}
	public void setSenha(String senha) {
		this.senha = senha;
	}
	//Gets e Sets da Classe aluno
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
	public String getSexo() {
		return sexo;
	}
	public void setSexo(String sexo) {
		this.sexo = sexo;
	}
	public String getCurso() {
		return curso;
	}
	public void setCurso(String curso) {
		this.curso = curso;
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
	public String getEndereco() {
		return endereco;
	}
	public void setEndereco(String endereco) {
		this.endereco = endereco;
	}
	
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return this.nome;
	}
}
	
	
	


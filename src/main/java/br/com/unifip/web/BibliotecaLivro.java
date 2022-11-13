package br.com.unifip.web;

import java.util.ArrayList;

public class BibliotecaLivro {
	private int id;
	private String name;
	public ArrayList<BibliotecaLivro> Livros = new ArrayList<>();

	
	public ArrayList<BibliotecaLivro> getLivros() {
		return Livros;
	}
	public void setLivros(ArrayList<BibliotecaLivro> livros) {
		Livros = livros;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	@Override
	public String toString() {
		return "Livros [id=" + id + ", name=" + name + "]";
	}
	
}

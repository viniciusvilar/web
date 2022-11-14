package br.com.unifip.web;


public class BibliotecaLivro {
	private int id;
	private String name;

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

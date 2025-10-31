package entidades;

public abstract class Produto {
	
	protected String classe;
	protected int identificador;
	protected String modelo;
	protected double preco;
	protected double peso;
	
	public Produto (String classe, int identificador, String modelo, double preco, double peso)	{
		this.classe = classe;
		this.modelo = modelo;
		this.preco = preco;
		this.peso = peso;
	}

	public String getModelo() {
		return modelo;
	}

	public double getPreco() {
		return preco;
	}

	public double getPeso() {
		return peso;
	}
	
	public int getIdentificador() {
		return identificador;
	}
	
	public String getClasse() {
		return classe;
	}

	public void setModelo(String modelo) {
		this.modelo = modelo;
	}
	
	public void setClasse(String classe) {
		this.classe = classe;
	}

	public void setPreco(double preco) {
		this.preco = preco;
	}

	public void setPeso(double peso) {
		this.peso = peso;
	}
	
	public void setIdentificador(int identificador) {
		this.identificador = identificador;
	}
	
	public abstract double calculaPrecoVista();
	
	public abstract double calculaPrecoCartao();
	
	public abstract void mostra();



}

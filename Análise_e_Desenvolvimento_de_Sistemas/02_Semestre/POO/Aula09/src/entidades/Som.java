package entidades;

public class Som extends Produto {
	
	private double potencia;

	public Som(String classe, int identificador, String modelo, double preco, double peso, double potencia) {
		super(classe, identificador, modelo, preco, peso);
		this.potencia = potencia;
	}

	public double getPotencia() {
		return potencia;
	}

	public void setPotencia(double potencia) {
		this.potencia = potencia;
	}
	
	public double calculaPrecoVista()	{
		return preco - preco * 0.07;
	}
	
	public double calculaPrecoCartao()	{
		return preco + preco * 0.07;
	}
	
	public void mostra()	{
		System.out.println("Modelo: " + modelo);
		System.out.println("Preço: " + preco);
		System.out.println("Peso: " + peso);
		System.out.println("Potência " + potencia);
	}

}

package entidades;

public class Televisao extends Produto {
	
	private boolean ehAltaResolucao;

	public Televisao(String classe, int identificador, String modelo, double preco, double peso, boolean ehAltaResolucao) {
		super(classe, identificador, modelo, preco, peso);
		this.ehAltaResolucao = ehAltaResolucao;
	}

	public boolean isEhAltaResolucao() {
		return ehAltaResolucao;
	}

	public void setEhAltaResolucao(boolean ehAltaResolucao) {
		this.ehAltaResolucao = ehAltaResolucao;
	}
	
	public double calculaPrecoVista()	{
		return preco - preco * 0.15;
	}
	
	public double calculaPrecoCartao()	{
		return preco + preco * 0.15;
	}
	
	public void mostra()	{
		System.out.println("Modelo: " + modelo);
		System.out.println("Preço: " + preco);
		System.out.println("Peso: " + peso);
		System.out.println("Alta resolução? " + ehAltaResolucao);
	}

}

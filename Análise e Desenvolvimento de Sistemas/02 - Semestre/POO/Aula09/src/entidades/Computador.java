package entidades;
public class Computador extends Produto {
	
	private boolean vemImpressora;
	
	public Computador(String classe, int identificador, String modelo, double preco, double peso, boolean vemImpressora) {
		super(classe, identificador, modelo, preco, peso);
		this.vemImpressora = vemImpressora;
	}

	public boolean isVemImpressora() {
		return vemImpressora;
	}

	public void setVemImpressora(boolean vemImpressora) {
		this.vemImpressora = vemImpressora;
	}
	
	public double calculaPrecoVista()	{
		return preco - preco * 0.1;
	}
	
	public double calculaPrecoCartao()	{
		return preco + preco * 0.1;
	}
	
	public void mostra()	{
		System.out.println("Modelo: " + modelo);
		System.out.println("Preço: " + preco);
		System.out.println("Peso: " + peso);
		System.out.println("Vem impressora? " + vemImpressora);
	}

}

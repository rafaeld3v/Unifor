package entidades;

public class Celular extends Produto {
	
	private boolean vemFone;

	public Celular(String classe, int identificador, String modelo, double preco, double peso, boolean vemFone) {
		super(classe, identificador, modelo, preco, peso);
		this.vemFone = vemFone;
		
	}

	public boolean isVemFone() {
		return vemFone;
	}

	public void setVemFone(boolean vemFone) {
		this.vemFone = vemFone;
	}
	
	public double calculaPrecoVista()	{
		return preco - preco * 0.05;
	}
	
	public double calculaPrecoCartao()	{
		return preco + preco * 0.05;
	}
	
	@Override
	public void mostra()	{
		System.out.println("Modelo: " + modelo);
		System.out.println("Preço: " + preco);
		System.out.println("Peso: " + peso);
		System.out.println("Vem fone? " + vemFone);
	}

}

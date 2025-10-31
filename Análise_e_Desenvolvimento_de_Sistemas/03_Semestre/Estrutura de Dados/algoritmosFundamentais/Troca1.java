package algoritmosFundamentais;
import java.util.Scanner;

public class Troca1 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner s = new Scanner(System.in);
		
		System.out.println("Informe o valor da variavel A: ");
		double a = s.nextDouble();
		System.out.println("Informe o valor da variavel B: ");
		double b = s.nextDouble();
		
		double aux;
		
		aux = a;
		a = b;
		b = aux;
		
		System.out.println("Novo valor da variavel A: " + a);
		System.out.println("Novo valor da variavel B: " + b);
	}

}

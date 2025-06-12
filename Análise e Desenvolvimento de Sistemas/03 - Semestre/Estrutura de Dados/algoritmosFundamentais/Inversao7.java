package algoritmosFundamentais;
import java.util.Scanner;
import java.lang.Math;

public class Inversao7 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner s = new Scanner(System.in);
		
		System.out.println("Informe um número inteiro positivo: ");
		int numero = s.nextInt();
		
		double invertido = 0;
		double digito;
		double q = numero;
		
		while(q > 0) {
			digito = q % 10;
			invertido = invertido * 10 + digito;
			q = (double) Math.floor(q / 10);
		}
		
		System.out.println("Número original: " + numero);
		System.out.println("Número invertido: " + invertido);
	}

}

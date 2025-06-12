package algoritmosFundamentais;
import java.util.Scanner;

public class Caractere9 {
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner sequencia = new Scanner(System.in);
		
		System.out.println("Informe uma sequ�ncia de caracteres n�merica: ");
		String teste = sequencia.nextLine();
		
		int n = teste.length();
		String[] caractereArray = teste.split("");
		int codigo;
		int numero = 0;
		  
		for (int i = 0; i < n; i++) {
			codigo = Character.codePointAt(caractereArray[i], 0);
		    numero = numero * 10 + (codigo - 48);
		}
		
		System.out.println("O n�mero decimal correspondente �: " + numero);
		sequencia.close();
		
	}
}
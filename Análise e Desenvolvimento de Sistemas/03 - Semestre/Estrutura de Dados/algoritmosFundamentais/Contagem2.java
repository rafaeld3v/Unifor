package algoritmosFundamentais;
import java.util.Scanner;

public class Contagem2 {
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner s = new Scanner(System.in);
		
		System.out.println("Informe a quantidade de notas: ");
		double n = s.nextDouble();
		double nota;
		double contador = 0;
		
		for (int i = 0; i < n; i++) {
			System.out.println("Informe uma nota: ");
			nota = s.nextDouble();
			
			if (nota >= 5.0) {	
				contador = contador + 1;
			}
		}
		
		System.out.println("Número de alunos que passaram no exame: " + contador);
		
	}
}

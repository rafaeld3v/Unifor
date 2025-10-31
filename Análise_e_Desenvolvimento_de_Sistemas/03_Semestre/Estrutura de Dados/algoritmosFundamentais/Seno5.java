package algoritmosFundamentais;

import java.util.Scanner;
import java.lang.Math;
import java.math.BigDecimal;

public class Seno5 {

	public static double fatorial(double n) {

		double fat = 1;
		for (double i = n; i >= 1; i--) {
			fat = fat * i;
		}

		return fat;
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner s = new Scanner(System.in);

		System.out.println("Informe o valor de x: ");
		double x = s.nextDouble();
		System.out.println("Informe o número de termos da série: ");
		int n = s.nextInt();

		double termo;
		double sinal = 1;
		double j = 1;
		double seno = 0;

		for (int i = 1; i <= n; i++) {
			termo = (double) (Math.pow(x, j) / fatorial(j));
			seno = seno + sinal * termo;
			sinal = -1 * sinal;
			j = j + 2;
		}

		BigDecimal senoFixed = new BigDecimal(seno);
		System.out.println(senoFixed);
	}

}


public class Data {
	
	//ATRIBUTOS! - O QUE A CLASSE TEM!
	int dia;
	int mes;
	int ano;
	
	//MÉTODO! - O QUE A CLASSE FAZ!
	String formataData() {
		String formato = dia + "/" + mes + "/" + ano;
		return formato;
	}
	
	boolean ehIgual(Data obj)	{
		if (dia == obj.dia && mes == obj.mes && ano == obj.ano)	{
			return true;
		} else {
			return false;
		}
	}
}
import java.util.Scanner;

public class Ejercicio8 {

    // Método para calcular el interés total
    public static double interesTotal(int montoPrestamo, int numeroDeMeses, double interesMensual) {

        interesMensual = interesMensual / 100;

        double resultadoInteresTotal = montoPrestamo * numeroDeMeses * interesMensual;

        return resultadoInteresTotal;
    }

    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);

        int montoPrestamo = 0;
        int numeroDeMeses = 0;
        double interesMensual = 0;
        double valorTotalAPagar = 0;

        System.out.print("Ingresa el monto del préstamo (capital): ");
        montoPrestamo = entrada.nextInt();

        System.out.print("Ingresa el número de meses del préstamo: ");
        numeroDeMeses = entrada.nextInt();

        System.out.print("Ingresa el interés mensual en porcentaje: ");
        interesMensual = entrada.nextDouble();

        valorTotalAPagar = montoPrestamo + interesTotal(montoPrestamo, numeroDeMeses, interesMensual);

        System.out.println("El valor total a pagar es: $" + valorTotalAPagar);
    }
}
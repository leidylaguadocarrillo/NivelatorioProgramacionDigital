import java.util.Scanner;

public class Ejercicio5 {

    // Función para calcular el MCM de dos números
    public static int MCM(int a, int b) {

        int numeroA = a;
        int numeroB = b;

        if (a < b) {
            int auxiliar = a;
            a = b;
            b = auxiliar;
        }

        int residuo = a % b;

        while (residuo > 0) {
            int auxiliar = b;
            b = residuo;
            a = auxiliar;
            residuo = a % b;
        }

        return (numeroA * numeroB) / b;
    }

	public static void main(String[] args) {
	    Scanner entrada = new Scanner(System.in);

        int acumuladoMCM = 0;
        int calculoMCM = 0;
        int numeroUsuario = 0;

        boolean primerNumero = true;
        boolean entradaCiclo = true;
        boolean hayNumeros = false;

        while (entradaCiclo) {

            System.out.print("Ingresa un número: ");
            numeroUsuario = entrada.nextInt();

            if (numeroUsuario > 0) {

                if (primerNumero) {
                    acumuladoMCM = numeroUsuario;
                    primerNumero = false;
                } else {
                    calculoMCM = MCM(acumuladoMCM, numeroUsuario);
                    acumuladoMCM = calculoMCM;
                }

                hayNumeros = true;

            } else {
                entradaCiclo = false;
            }
        }

        if (hayNumeros) {
            System.out.println("El MCM de los números ingresados antes del número inválido es: " + acumuladoMCM);
        } else {
            System.out.println("No se ingresaron números válidos.");
        }

    }
}

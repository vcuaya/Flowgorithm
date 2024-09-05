/*
* Represente la lógica de un programa que permita al usuario
* introducir valores para el salario base, las ventas totales
* y la tasa de comisión de un vendedor. El programa calcula
* y da salida al pago del vendedor agregando el salario base
* al producto de las ventas totales y la tasa de comisión.
*
* Represent the logic of a program that allows the user to
* enter values for the base salary, total sales, and the
* commission rate of a salesperson. The program calculates
* and outputs the salesperson's payment by adding the base
* salary to the product of the total sales and the commission.
*/

namespace SalespersonPayment;

class Program
{
    static void Main(string[] args)
    {
        double baseSalary, totalSales, commissionRate, payment;
        baseSalary = ReadNumber("Enter the base salary: ");
        totalSales = ReadNumber("Enter the total sales: ");
        commissionRate = ReadNumber("Enter the commission rate: ");
        payment = CalculatePayment(baseSalary, totalSales, commissionRate);

        Console.WriteLine($"The payment is: {payment:C2}");
        Console.WriteLine("Press any key to exit...");
        Console.ReadKey();
    }

    static double ReadNumber(string message)
    {
        double number;
        Console.WriteLine(message);
        while(!double.TryParse(Console.ReadLine(), out number))
        {
            Console.WriteLine("Invalid input. Try again.");
        }
        return number;
    }

    static double CalculatePayment(double baseSalary, double totalSales, double commissionRate)
    {
        return baseSalary + totalSales * commissionRate / 100;
    }
}

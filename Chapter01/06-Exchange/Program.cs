/*
* Investigue las tasas actuales de cambio monetario. Represente
* la lógica de un programa que permita al usuario introducir un
* número de dólares y convertirlos a euros y a yenes.
*
* 1 dólar = 0.85 euros
* 1 dólar = 110.31 yenes
*
* Investigate the current exchange rates. Represent the logic of a
* program that allows the user to enter a number of dollars and
* convert them to euros and yen.
*
* 1 dollar = 0.85 euros
* 1 dollar = 110.31 yen
*/

namespace Exchange;

class Program
{
    static void Main(string[] args)
    {
        double dollars, euros, yenes;

        dollars = ReadNumber("Enter the amount in dollars: ");
        euros = CalculateEuros(dollars);
        yenes = CalculateYenes(dollars);

        Console.WriteLine($"The amount in dollars is: {dollars:C2}");
        Console.WriteLine($"The amount in euros is: {euros:C2}");
        Console.WriteLine($"The amount in yenes is: {yenes:C2}");
        Console.WriteLine("Press any key to exit...");
        Console.ReadKey();
    }

    static double ReadNumber(string message)
    {
        double number;
        Console.Write(message);
        while (!double.TryParse(Console.ReadLine(), out number))
        {
            Console.WriteLine("Invalid number, try again.");
        }
        return number;
    }

    static double CalculateEuros(double dollars)
    {
        return dollars * 0.85;
    }

    static double CalculateYenes(double dollars)
    {
        return dollars * 110.31;
    }
}

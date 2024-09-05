namespace DivideByTwo;

class Program
{
    static void Main(string[] args)
    {
        // This program divides a number by 2

        double number, result;

        number = ReadNumber("Enter a number: ");
        result = Divide(number, 2);

        Console.WriteLine($"The result of dividing {number} by 2 is {result}");
        Console.WriteLine("Press any key to exit...");
    }

    // .NET can only read single characters or entire lines from the
    // console. The following function safely reads a double value.
    static double ReadNumber(string message)
    {
        double userInput;

        Console.WriteLine(message);
        
        while (!double.TryParse(Console.ReadLine(), out userInput))
        {
            Console.WriteLine("Invalid input. Please enter a number.");
        }

        return userInput;
    }

    static double Divide(double number, double divisor)
    {
        double result;

        result = number / divisor;

        return result;
    }
}

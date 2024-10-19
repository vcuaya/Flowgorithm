
namespace SumeOneToN;

class Program
{
    static void Main(string[] args)
    {
        int number = default;
        int sum = default;

        number = ReadPositiveInteger("Enter a number: ");

        for (int i = 1; i <= number; i++)
        {
            sum += i;
        }

        WriteLine($"The sum of the numbers from 1 to {number} is {sum}.");

        WriteLine($"Program finished. Press any key to exit...");
        ReadKey();
    }

    private static int ReadPositiveInteger(string message)
    {
        int number = default;

        Write(message);

        while (true)
        {
            if (int.TryParse(ReadLine(), out number) && number > 0)
            {
                break;
            }
            else
            {
                Write($"Invalid input. {message}");
            }
        }

        return number;
    }
}


namespace ReverseArray;

class Program
{
    static void Main(string[] args)
    {
        const int SENTINEL = 0;
        const int SIZE = 100;

        int[] numbers = new int[SIZE];
        int number = default;
        int index = default;

        number = ReadInteger($"Enter an integer number or {SENTINEL} to finish: ");

        while (number != SENTINEL)
        {
            numbers[index] = number;
            number = ReadInteger($"Enter an integer number or {SENTINEL} to finish: ");
            index++;
        }

        if (index > 0)
        {
            Write("Numbers in reverse order: ");
            for (index = index - 1; index >= 0; index--)
            {
                if (index == 0)
                {
                    Write($"{numbers[index]}.");
                }
                else
                {
                    Write($"{numbers[index]}, ");
                }
            }
        }

        WriteLine();
        WriteLine("Program finished. Press any key to exit...");
        ReadKey();
    }

    private static int ReadInteger(string message)
    {
        int number = default;
        Write(message);

        while (!int.TryParse(ReadLine(), out number))
        {
            Write($"Invalid input. {message}");
        }

        return number;
    }
}


namespace ReverseArray;

class Program
{
    static void Main(string[] args)
    {
        const int SIZE = 15;
        int[] numbers = new int[SIZE];

        for (int index = 0; index < SIZE; index++)
        {
            numbers[index] = ReadInteger($"Enter an integer number [{index + 1,2}]: ");
        }

        Write("Numbers in reverse order: ");
        for (int index = SIZE - 1; index >= 0; index--)
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

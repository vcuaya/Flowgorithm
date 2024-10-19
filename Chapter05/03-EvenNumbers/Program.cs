namespace EvenNumbers;

class Program
{
    static void Main(string[] args)
    {
        for (int i = 2; i <= 100; i += 2)
        {
            if (i == 2)
            {
                Write(i);
            }
            else
            {
                Write(", " + i);
            }
        }

        WriteLine();
        WriteLine("Program finished. Press any key to exit.");
        ReadKey();
    }
}

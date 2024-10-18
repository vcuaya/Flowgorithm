namespace PrintOneToTwenty;

class Program
{
    static void Main(string[] args)
    {
        for (int i = 1; i <= 20; i++)
        {
            if(i == 1)
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
        Console.ReadKey();
    }
}

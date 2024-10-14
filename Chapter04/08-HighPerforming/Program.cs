namespace HighPerforming;

class Program
{
    static void Main(string[] args)
    {
        string name, lastName;
        int turns, transactions;
        decimal value;
        decimal productivity;

        name = ReadString("Enter employee name: ");
        lastName = ReadString("Enter employee last name: ");
        turns = ReadPositiveInteger("Enter number of turns: ");
        transactions = ReadPositiveInteger("Enter number of transactions: ");
        value = ReadPositiveDecimal("Enter value: ");

        productivity = CalculateProductivity(turns, transactions, value);

        DisplayResults(name, lastName, productivity);

        WriteLine("Program finished. Press any key to exit.");
        ReadKey();
    }

    static string ReadString(string message)
    {
        Write(message);
        return ReadLine();
    }

    static int ReadPositiveInteger(string message)
    {
        int number;
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

    static decimal ReadPositiveDecimal(string message)
    {
        decimal number;
        Write(message);
        
        while (true)
        {
            if (decimal.TryParse(ReadLine(), out number) && number > 0)
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

    static decimal CalculateProductivity(int turns, int transactions, decimal value)
    {
        return value / transactions / turns;
    }

    static void DisplayResults(string name, string lastName, decimal productivity)
    {
        string highPerforming = productivity >= 50 ? "***" : "";

        WriteLine();
        WriteLine("+--------------+-----------------+--------------+-----------------+");
        WriteLine("|     Name     |    Last Name    | Productivity | High Performing |");
        WriteLine("+--------------+-----------------+--------------+-----------------+");
        WriteLine($"| {name,12} | {lastName,15} | {productivity,12:N2} | {highPerforming,15} |");
        WriteLine("+--------------+-----------------+--------------+-----------------+");
        WriteLine();
    }
        
}

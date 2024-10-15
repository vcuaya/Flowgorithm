namespace HighPerforming;

class Program
{
    static void Main(string[] args)
    {
        string name, lastName;
        int turns, transactions;
        decimal value;
        decimal productivity;
        int bonus;

        const string SENTINEL = "exit";

        name = ReadString("Enter employee name or " + SENTINEL + " to finish: ");

        while (name.ToLower().Trim() != SENTINEL)
        {
            lastName = ReadString("Enter employee last name: ");
            turns = ReadPositiveInteger("Enter number of turns: ");
            transactions = ReadPositiveInteger("Enter number of transactions: ");
            value = ReadPositiveDecimal("Enter value of transactions: ");

            productivity = CalculateProductivity(turns, transactions, value);
            bonus = CalculateBonus(productivity);

            DisplayResults(name, lastName, productivity, bonus);

            name = ReadString("Enter employee name or " + SENTINEL + " to finish: ");
        }

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

    static int CalculateBonus(decimal productivity)
    {
        int bonus = default;

        if (productivity > 200)
        {
            bonus = 200;
        }
        else if (productivity > 80)
        {
            bonus = 100;
        }
        else if (productivity > 30)
        {
            bonus = 50;
        }
        else
        {
            bonus = 25;
        }

        return bonus;
    }

    static void DisplayResults(string name, string lastName, decimal productivity, int bonus)
    {
        string highPerforming = productivity >= 50 ? "***" : "";

        WriteLine();
        WriteLine("+--------------+-----------------+--------------+-------+-----------------+");
        WriteLine("|     Name     |    Last Name    | Productivity | Bonus | High Performing |");
        WriteLine("+--------------+-----------------+--------------+-------+-----------------+");
        WriteLine($"| {name,12} | {lastName,15} | {productivity,12:N2} | {bonus,5:C0} | {highPerforming,15} |");
        WriteLine("+--------------+-----------------+--------------+-------+-----------------+");
        WriteLine();
    }

}

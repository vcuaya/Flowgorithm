namespace YabeOnlineAuctions;

class Program
{
    static void Main(string[] args)
    {
        string productId;
        string productName;
        decimal initialPrice;
        decimal currentPrice;

        const string SENTINEL = "exit";
        const decimal RATE = 0.12m;
        const int WEEKS = 6;

        productId = ReadString($"Enter product ID or {SENTINEL} to finish: ");

        while (productId.ToLower().Trim() != SENTINEL)
        {
            productName = ReadString("Enter product name: ");
            initialPrice = ReadPositiveDecimal("Enter initial price: ");

            currentPrice = initialPrice;

            WriteLine();
            WriteLine("+----------------------------------------------------+");
            WriteLine($"| Product ID: {productId,38} |");
            WriteLine($"| Product name: {productName,36} |");
            WriteLine($"| Initial price: {initialPrice,35:C} |");
            WriteLine("+----------------------------------------------------+");

            WriteLine("+------+-----------------+");
            WriteLine("| Week |      Price      |");
            WriteLine("+------+-----------------+");

            for (int week = 1; week <= WEEKS; week++)
            {
                if (week != 1)
                {
                    currentPrice *= (1 - RATE);
                }

                WriteLine($"| {week,4} | {currentPrice,15:C} |");
            }

            WriteLine("+------+-----------------+");
            WriteLine();

            productId = ReadString($"Enter product ID or {SENTINEL} to finish: ");
        }

        WriteLine("Program finished. Press any key to exit...");
        ReadKey();
    }

    private static string ReadString(string message)
    {
        string? input;

        Write(message);

        while (true)
        {
            input = ReadLine();

            if (input != null && input.Trim().Length > 0)
            {
                break;
            }
            else
            {
                Write($"Invalid input. {message}");
            }
        }

        return input;
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
}



namespace RetirementPlanning;

class Program
{
    static void Main(string[] args)
    {
        int yearsLeft = default;
        decimal annualSavings = default;
        decimal totalSavings = default;
        decimal balance = default;
        int year = default;

        const decimal INTEREST_RATE = 0.03m;
        const decimal ANNUAL_EXPENSE = 50_000m;
        const int MAX_YEARS = 40;

        yearsLeft = ReadPositiveInteger("Enter the number of years left until retirement: ");
        annualSavings = ReadPositiveDecimal("Enter the amount of money you make every year: ");

        for (year = 1; year <= yearsLeft; year++)
        {
            totalSavings += annualSavings;
            totalSavings *= (1 + INTEREST_RATE);
        }

        balance = totalSavings;

        string headingBorder = "+----------------------------------+";
        string bodyBorder = "+--------+-----------------+";

        WriteLine(headingBorder);
        WriteLine($"|       Retirement  Planning       |");
        WriteLine(headingBorder);

        WriteLine($"| Years left: {yearsLeft,20} |");
        WriteLine($"| Annual savings: {annualSavings,16:C} |");
        WriteLine($"| Annual expenses: {ANNUAL_EXPENSE,15:C} |");
        WriteLine($"| Interest rate: {INTEREST_RATE,17:P1} |");
        WriteLine($"| Total savings: {totalSavings,17:C} |");
        WriteLine(headingBorder);

        WriteLine(bodyBorder);
        WriteLine("|  Year  |     Balance     |");
        WriteLine(bodyBorder);

        year = 0;

        while (year <= MAX_YEARS && balance > 0)
        {
            WriteLine($"| {year,6} | {balance,15:C} |");
            WriteLine(bodyBorder);

            balance -= ANNUAL_EXPENSE;
            balance *= (1 + INTEREST_RATE);
            year++;
        }

        WriteLine("Program finished. Press any key to exit...");
        ReadKey();
    }

    private static decimal ReadPositiveDecimal(string message)
    {
        decimal number = default;

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

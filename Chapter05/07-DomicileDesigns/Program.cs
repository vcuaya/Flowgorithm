
namespace DomicileDesigns;

class Program
{
    static void Main(string[] args)
    {
        string? accountNumber = default;
        string? customerName = default;
        decimal purchase = default;
        decimal balance = default;
        decimal interest = default;
        decimal payment = default;
        int month = default;

        const decimal INTEREST_RATE = 0.0125m;
        const decimal PAYMENT_RATE = 0.07m;
        const int MONTHS = 12;

        accountNumber = ReadString("Enter account number: ");
        customerName = ReadString("Enter customer name: ");
        purchase = ReadPositiveDecimal("Enter price of purchase: ");
        balance = purchase;

        WriteLine();
        WriteLine("+----------------------------------------------------------------------------+");
        WriteLine($"| Account number: {accountNumber,58} |");
        WriteLine($"| Customer name: {customerName,59} |");
        WriteLine($"| Purchase amount: {purchase,57:C} |");
        WriteLine("+----------------------------------------------------------------------------+");
        WriteLine("+-----------------+----------------+-----------------+-----------------------+");
        WriteLine("|     Initial     |    Interest    |      Final      |    Monthly Payment    |");
        WriteLine("+-----------------+----------------+-----------------+-----------------------+");

        month = 1;
        while (month <= MONTHS && balance > 25)
        {
            interest = balance * INTEREST_RATE;
            Write($"| {balance,15:C} | {interest,14:C} ");

            balance += interest;
            payment = balance * PAYMENT_RATE;
            Write($"| {balance + interest,15:C} | Month {month,2}: {payment,11:C} |");
            WriteLine();

            balance -= payment;
            month += 1;
        }

        WriteLine("+-----------------+----------------+-----------------+-----------------------+");
        WriteLine();

        if (balance <= 25)
        {
            WriteLine($"Customer can liquidate. Final balance is {balance:C}.");
        }
        else
        {
            WriteLine($"Final balance after 12 months is over {balance:C}.");
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

    private static string? ReadString(string message)
    {
        string? text;

        Write(message);

        while (true)
        {
            text = ReadLine();
            if (text != null && text.Trim().Length > 0)
            {
                break;
            }
            else
            {
                Write($"Invalid input. {message}");
            }
        }

        return text;
    }
}

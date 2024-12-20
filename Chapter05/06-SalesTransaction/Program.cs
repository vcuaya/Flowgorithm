﻿namespace SalesTransaction;

class Program
{
    static void Main(string[] args)
    {
        string accountNumber;
        string customerName;
        decimal purchase;
        decimal payment;
        const string SENTINEL = "exit";

        accountNumber = ReadString($"Enter account number or {SENTINEL} to finish: ");

        while (accountNumber.ToLower().Trim() != SENTINEL)
        {
            customerName = ReadString("Enter customer name: ");
            purchase = ReadPositiveDecimal("Enter price of purchase: ");
            payment = purchase / 12;

            DisplayResults(accountNumber, customerName, purchase, payment);

            accountNumber = ReadString($"Enter account number or {SENTINEL} to finish: ");
        }

        WriteLine("Program finished. Press any key to exit...");
        ReadKey();
    }

    private static void DisplayResults(string? accountNumber, string? customerName, decimal purchase, decimal payment)
    {
        const string TITLE = "|            Amortization Schedule            |";
        const string HEADER = "| Month |     Payments     |       Debt       |";

        const string TITLE_BORDER = "+---------------------------------------------+";
        const string BORDER = "+-------+------------------+------------------+";

        WriteLine();
        WriteLine(TITLE_BORDER);
        WriteLine(TITLE);
        WriteLine(TITLE_BORDER);

        WriteLine(TITLE_BORDER);
        WriteLine($"| Account {accountNumber,35} |");
        WriteLine($"| Customer {customerName,34} |");
        WriteLine($"| Purchase {purchase,34:C} |");
        WriteLine(TITLE_BORDER);

        WriteLine(BORDER);
        WriteLine(HEADER);
        WriteLine(BORDER);

        for (int i = 1; i <= 12; i++)
        {
            WriteLine($"| {i,5:N0} | {payment,16:C} | {purchase - payment * i,16:C} |");
            WriteLine(BORDER);
        }

        WriteLine();
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

    private static string ReadString(string message)
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

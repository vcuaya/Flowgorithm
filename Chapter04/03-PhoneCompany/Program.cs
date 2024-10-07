namespace PhoneCompany;

class Program
{
    const decimal TAXES = 0.12M;
    const decimal BASIC_RATE = 5M;
    const decimal RATE_A = 0.05M;
    const decimal RATE_B = 0.10M;
    const string SENTINEL = "000";

    static void Main(string[] args)
    {
        string areaCode;
        string phoneNumber;
        int numberOfMessages;
        decimal totalAmount;

        areaCode = ReadAreaCode("Enter the area code (3 digits or 000 to finish): ");

        while (areaCode != SENTINEL)
        {
            phoneNumber = ReadPhoneNumber("Enter the phone number (10 digits): ");
            numberOfMessages = ReadPositiveInt("Enter the number of messages: ");

            totalAmount = CalculateTotal(numberOfMessages);

            DisplayInvoice(areaCode, phoneNumber, numberOfMessages, totalAmount);

            areaCode = ReadAreaCode("Enter the area code (3 digits or 000 to finish): ");
        }

        WriteLine("Program finished. Press any key to exit.");
        ReadKey();
    }

    static string ReadAreaCode(string message)
    {
        string input;
        Write(message);
        while (true)
        {
            input = ReadLine();

            if (input?.Length == 3)
            {
                break;
            }

            Write($"Invalid input. {message}");
        }
        return input;
    }

    static int ReadPositiveInt(string message)
    {
        int number;
        Write(message);
        while (true)
        {
            string input = ReadLine();

            if (int.TryParse(input, out number) && number > 0)
            {
                break;
            }

            Write($"Invalid input. {message}");
        }

        return number;
    }

    static string ReadPhoneNumber(string message)
    {
        string input;
        int number = default;
        Write(message);
        while (true)
        {
            input = ReadLine();
            if (input != null && input.Length == 10 && int.TryParse(input, out number) && number > 0)
            {
                break;
            }

            Write($"Invalid input. {message}");
        }
        return input;
    }

    static decimal CalculateTotal(int numberOfMessages)
    {
        decimal total = BASIC_RATE;

        if (60 < numberOfMessages && numberOfMessages <= 180)
        {
            total += (numberOfMessages - 60) * RATE_A;
        }
        else if (180 < numberOfMessages)
        {
            total += (numberOfMessages - 180) * RATE_B;
        }
        total *= (1 + TAXES);
        return total;
    }

    static void DisplayInvoice(string areaCode, string phoneNumber, int numberOfMessages, decimal totalAmount)
    {
        WriteLine();
        WriteLine("+-----------+--------------+--------------------+--------------+");
        WriteLine("| Area code | Phone number | Number of messages | Total amount |");
        WriteLine("+-----------+--------------+--------------------+--------------+");
        WriteLine($"| {areaCode,9} | {phoneNumber,12} | {numberOfMessages,18} | {totalAmount,12:C} |");
        WriteLine("+-----------+--------------+--------------------+--------------+");
        WriteLine();
    }
}

namespace CustomSigns;

class Program
{
    const int BASIC_PRICE = 30;
    const int OAK_PRICE = BASIC_PRICE + 15;
    const int GOLD_PRICE = 12;
    const int CHARACTER_PRICE = 3;

    static void Main(string[] args)
    {
        int idNumber = default;
        string clientName = default;
        string woodType = default;
        int numCharacters = default;
        string color = default;
        int finalPrice = default;

        const int SENTINEL = 999;

        idNumber = ReadPositiveInteger($"Enter the ID number or {SENTINEL} to finish: ");

        while (idNumber != SENTINEL)
        {
            clientName = ReadString("Enter the client name: ");
            woodType = ReadString("Enter the wood type [pine(p) or oak(o)]: ", ["p", "o"]);
            numCharacters = ReadPositiveInteger("Enter the number of characters: ");
            color = ReadString("Enter the color [white(w) or black(b) or gold(g)]: ", ["w", "b", "g"]);
            finalPrice = CalculateFinalPrice(woodType, numCharacters, color);

            if (woodType.ToLower() == "o" && color.ToLower() == "w" && numCharacters == 5)
            {
                DisplayResults(idNumber, clientName, woodType, numCharacters, color, finalPrice);
            }

            idNumber = ReadPositiveInteger($"Enter the ID number or {SENTINEL} to finish: ");
        }

        WriteLine("Program finished. Press any key to exit.");
        ReadKey();
    }

    static int ReadPositiveInteger(string message)
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

    static string ReadString(string message)
    {
        Write(message);

        return ReadLine();
    }

    static string ReadString(string message, List<string> validInputs)
    {
        Write(message);

        while (true)
        {
            string input = ReadLine();

            if (validInputs.Contains(input.ToLower()))
            {
                return input;
            }
            else
            {
                Write($"Invalid input. {message}");
            }
        }
    }

    static int CalculateFinalPrice(string woodType, int numCharacters, string color)
    {
        int finalPrice = default;

        if (woodType.ToLower() == "p")
        {
            finalPrice = BASIC_PRICE;
        }
        else
        {
            finalPrice = OAK_PRICE;
        }
        if (color.ToLower() == "g")
        {
            finalPrice += GOLD_PRICE;
        }
        if (numCharacters > 6)
        {
            finalPrice += (numCharacters - 6) * CHARACTER_PRICE;
        }

        return finalPrice;
    }

    static void DisplayResults(int idNumber, string clientName, string woodType, int numCharacters, string color, int finalPrice)
    {
        WriteLine();

        WriteLine("+----------------------------------------------------------+");
        WriteLine($"| ID Number: {idNumber,45} |");
        WriteLine($"| Client Name: {clientName,43} |");
        WriteLine("+----------------------------------------------------------+");

        WriteLine("+---------------------+------------------+-----------------+");
        WriteLine("|     Description     |     Quantity     |      Price      |");
        WriteLine("+---------------------+------------------+-----------------+");

        if (woodType.ToLower() == "p")
        {
            WriteLine($"| {"Pine Wood",-19} | {"1 signe",-16} | {BASIC_PRICE,15:C} |");
        }
        else
        {
            WriteLine($"| {"Oak Wood",-19} | {"1 signe",-16} | {OAK_PRICE,15:C} |");
        }

        switch (color.ToLower())
        {
            case "w":
                WriteLine($"| {"White Color",-19} | {"1 container",-16} | {0,15:C} |");
                break;

            case "b":
                WriteLine($"| {"Black Color",-19} | {"1 container",-16} | {0,15:C} |");
                break;

            case "g":
                WriteLine($"| {"Gold Color",-19} | {"1 container",-16} | {GOLD_PRICE,15:C} |");
                break;
        }

        if (numCharacters > 6)
        {
            WriteLine($"| {"Extra Characters",-19} | {(numCharacters - 6),-16} | {(numCharacters - 6) * CHARACTER_PRICE,15:C} |");
        }

        WriteLine("+----------------------------------------------------------+");
        WriteLine($"| Total Price: {finalPrice,43:C} |");
        WriteLine("+----------------------------------------------------------+");

        WriteLine();
    }
}

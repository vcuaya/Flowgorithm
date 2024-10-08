namespace InsuranceCompany;

class Program
{
    static void Main(string[] args)
    {
        int policyNumber;
        string lastName;
        string firstName;
        int age;
        int day;
        int month;
        int year;
        int accidents;
        const int SENTINEL = 0;

        policyNumber = ReadInteger($"Enter the policy number or type {SENTINEL} to finish: ");
        while (policyNumber != SENTINEL)
        {
            lastName = ReadString("Enter the last name: ");
            firstName = ReadString("Enter the first name: ");
            age = ReadInteger("Enter the age: ");
            day = ReadInteger("Enter the day: ");
            month = ReadInteger("Enter the month: ");
            year = ReadInteger("Enter the year: ");
            accidents = ReadInteger("Enter the number of accidents: ");

            if (policyNumber < 1000 || policyNumber > 9999)
            {
                policyNumber = 0;
            }
            if (month < 1 || month > 12)
            {
                month = 0;
            }
            if (month == 1 || month == 3 || month == 5 || month == 7 || month == 8 || month == 10 || month == 12)
            {
                if (day < 1 || day > 31)
                {
                    day = 0;
                }
            }
            else if (month == 4 || month == 6 || month == 9 || month == 11)
            {
                if (day < 1 || day > 30)
                {
                    day = 0;
                }
            }
            else if (month == 2)
            {
                if (day < 1 || day > 29)
                {
                    day = 0;
                }
            }

            if (!(age > 30))
            {
                DisplayPolicy(policyNumber, lastName, firstName, age, day, month, year, accidents);
            }

            policyNumber = ReadInteger($"Enter the policy number or type {SENTINEL} to finish: ");
        }

        WriteLine("Program finished. Press any key to exit.");
        ReadKey();
    }

    static int ReadInteger(string message)
    {
        int number = default;
        Write(message);

        while (!int.TryParse(ReadLine(), out number))
        {
            Write($"Invalid input. {message}");
        }

        return number;
    }

    static string ReadString(string message)
    {
        Write(message);
        return ReadLine();
    }

    static void DisplayPolicy(int policyNumber, string lastName, string firstName, int age, int day, int month, int year, int accidents)
    {
        WriteLine();
        WriteLine("+---------------+-----------------+----------------+-----+-----+-------+------+-----------+");
        WriteLine("| Policy Number |    Last Name    |   First Name   | Age | Day | Month | Year | Accidents |");
        WriteLine("+---------------+-----------------+----------------+-----+-----+-------+------+-----------+");
        WriteLine($"| {policyNumber,13} | {lastName,15} | {firstName,14} | {age,3} | {day,3} | {month,5} | {year,4} | {accidents,9:N0} |");
        WriteLine("+---------------+-----------------+----------------+-----+-----+-------+------+-----------+");
        WriteLine();
    }
}

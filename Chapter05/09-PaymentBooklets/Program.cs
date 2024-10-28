namespace PaymentBooklets;

class Program
{
    static void Main(string[] args)
    {
        const int BUILDINGS = 20;
        const int DEPARTMENTS_PER_BUILDING = 15;
        const int RENT_PER_MONTH = 800;
        const int MONTHS = 12;

        for (int building = 1; building <= BUILDINGS; building++)
        {
            for (int department = 1; department <= DEPARTMENTS_PER_BUILDING; department++)
            {
                for (int month = 1; month <= MONTHS; month++)
                {
                    WriteLine("+--------------+----------------+");
                    WriteLine($"| Building: {building,2} | Department: {department,2} |");
                    WriteLine("+--------------+----------------+");
                    WriteLine($"| Month {month,2}: {RENT_PER_MONTH,19:C} |");
                    WriteLine("+-------------------------------+");
                    WriteLine();
                }
            }
        }
    }
}

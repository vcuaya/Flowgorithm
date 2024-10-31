
namespace TuitionFees;

class Program
{
    static void Main(string[] args)
    {
        const int GRADES = 9;
        const int CLASSROOMS_PER_GRADE = 3;
        const int MONTHS = 9;
        const int TUITION_FEE_KINDERGARTEN = 80;
        const int TUITION_FEE_OTHERS = 60;

        for (int grade = 0; grade < GRADES; grade++)
        {
            for (int classroom = 1; classroom <= CLASSROOMS_PER_GRADE; classroom++)
            {
                for (int month = 1; month <= MONTHS; month++)
                {
                    if (grade == 0)
                    {
                        DisplayTuitionFee(grade, classroom, month, TUITION_FEE_KINDERGARTEN);
                    }
                    else
                    {
                        DisplayTuitionFee(grade, classroom, month, TUITION_FEE_OTHERS);
                    }
                }
            }
        }

        WriteLine("Program finished. Press any key to continue...");
        ReadKey();
    }

    private static void DisplayTuitionFee(int grade, int classroom, int month, int tuitionFee)
    {
        WriteLine("+----------------------------+");
        WriteLine($"| Grade: {grade,2} Classroom: {classroom,5} |");
        WriteLine($"| Month: {month,2} Tuition: {tuitionFee,7:C} |");
        WriteLine("+----------------------------+");
        WriteLine();
    }
}

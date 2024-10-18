namespace PrintDoubleAndTriple;

class Program
{
    static void Main(string[] args)
    {
        const string TITLE_BORDER = "+--------------------------------+";
        const string TITLE = "| Printing 1 to 20 (x1, x2, x3)  |";
        const string HEADER_BORDER = "+----------+----------+----------+";
        const string HEADER = "| Original |  Double  |  Triple  |";

        WriteLine();
        WriteLine(TITLE_BORDER);
        WriteLine(TITLE);
        WriteLine(TITLE_BORDER);
        WriteLine(HEADER_BORDER);
        WriteLine(HEADER);
        WriteLine(HEADER_BORDER);
        
        for (int iterator = 1; iterator <= 20; iterator++)
        {
            WriteLine(
                format: "| {0, 8:N0} | {1, 8:N0} | {2, 8:N0} |",
                arg0: iterator,
                arg1: iterator * 2,
                arg2: iterator * 3
            );
            WriteLine(HEADER_BORDER);
        }

        WriteLine();
        WriteLine("Program finished. Press any key to exit...");
        ReadKey();
    }
}
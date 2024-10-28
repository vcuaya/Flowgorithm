/*
    Problema:
        Diseñe una calculadora de planeación del retiro para Skulling
        Financial Services. Permita que un usuario introduzca el número de
        años de trabajo que restan en su profesión y la cantidad anual de
        dinero que puede ahorrar. Suponga que el usuario gana 3% de interés
        simple sobre sus ahorros cada año. La salida del programa es un
        calendario que lista cada número de año en retiro empezando con el
        año cero y los ahorros del usuario al inicio de ese año. Suponga
        que el usuario gasta $50,000 por año en el retiro y luego gana 3%
        de interés sobre el saldo restante. Termine la lista después de 40
        años, o cuando el saldo del usuario sea 0 o menos, lo que ocurra
        primero.

    Objetivo:
        Mostrar el calendario de retiro de un usuario.

    Entradas:
        Cantidad de años de trabajo restantes.
        Cantidad anual de dinero que puede ahorrar.

    Salidas:
        Calendario de retiro.

    Fórmulas:
        Saldo = Ahorro * (1 + 3%)
        Ahorro = Saldo * (1 - 3%)
*/

Main
    declare
        num yearsLeft
        num annualSavings
        num totalSavings
        num balance
        num year
        const num INTEREST_RATE = 0.03
        const num ANNUAL_EXPENSE = 50000
        const num MAX_YEARS = 40
    end declare

    set yearsLeft = ReadNumber("Enter the number of years left in your career: ")
    set annualSavings = ReadNumber("Enter your annual savings: ")

    set totalSavings = 0

    for year = 1 to yearsLeft step 1
        set totalSavings = totalSavings + annualSavings
        set totalSavings = totalSavings * (1 + INTEREST_RATE)
    end for

    set balance = totalSavings
    set year = 0

    while year <= MAX_YEARS and balance > 0 do
        output "Year " + year + ": " + balance

        set balance = balance - ANNUAL_EXPENSE

        set balance = balance * (1 + INTEREST_RATE)

        set year = year + 1
    end while
Stop

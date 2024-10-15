/*
Problema:
    Amanda Cho, supervisora en una tienda minorista de ropa, desea
    reconocer a los vendedores de alto rendimiento. Diseñe lo siguiente:

    a) Un programa que acepte en forma continua el nombre y apellido de cada
    vendedor, el número de turnos que trabajó en un mes, número de
    transacciones que completó ese mes y el valor en monetario de esas
    transacciones. Despliegue el nombre de cada vendedor con una puntuación
    de productividad, misma que se calcula dividiendo primero el valor
    monetario de las transacciones entre el número de transacciones y
    dividiendo el resultado entre los turnos trabajados. Despliegue tres
    asteriscos después de la puntuación de productividad si es de 50 o más.

    b) Un programa que acepte los datos de cada vendedor y despliegue el
    nombre y una cantidad de bonificación.
    
    Los bonos se distribuirán como sigue:
        1. Si la puntuación de productividad es 30 o menos, el bono es de $25.
        2. Si la puntuación de productividad es 31 o más y menos que 80, el
           bono es de $50.
        3. Si la puntuación de productividad es 80 o más y menos que 200, el
           bono es de $100.
        4. Si la puntuación de productividad es 200 o más, el bono es de $200.

    c) Un programa que refleje el siguiente nuevo hecho de manera eficiente:
        1. Sesenta por ciento de los empleados tienen una puntuación de
           productividad mayor que 200.

Objetivos:
    Desplegar los datos de los vendedores de alto rendimiento.

Entradas:
    Nombre del vendedor
    Apellido del vendedor
    Turnos trabajados
    Transacciones realizadas
    Valor de las transacciones

Salidas:
    Nombre del vendedor
    Puntuación de productividad

Fórmulas:
    Puntuación de productividad = (Valor monetario / Transacciones) / Turnos trabajados
*/

Main
    declare
        string employeeName
        string employeeLastName
        num employeeTurns
        num employeeTransactions
        num employeeValue
        num productivity
        num bonus
        const string SENTINEL = "exit"
    end declare

    set employeeName = ReadString("Enter the name of the employee or " + SENTINEL + " to finish: ")
    
    while employeeName != SENTINEL do
        set employeeLastName = ReadString("Enter the last name of the employee: ")
        set employeeTurns = ReadNumber("Enter the number of turns: ")
        set employeeTransactions = ReadNumber("Enter the number of transactions: ")
        set employeeValue = ReadNumber("Enter the value of the transactions: ")
        
        set productivity = CalculateProductivity(employeeValue, employeeTransactions, employeeTurns)
        set bonus = CalculateBonus(productivity)
        
        call DisplayResults(employeeName, employeeLastName, productivity, bonus)

        set employeeName = ReadString("Enter the name of the employee or " + SENTINEL + " to finish: ")
    end while

    output "Program finished."
Stop

ReadString(string message)
    declare string stringInput
    output message
    input stringInput
return stringInput

ReadNumber(string message)
    declare num number
    output message
    input number
return number

CalculateProductivity(num value, num transactions, num turns)
    declare num productivity
    set productivity = value / transactions / turns
return productivity

CalculateBonus(num productivity)
    declare num bonus

    if productivity > 200 then
        set bonus = 200
    else if productivity > 80 then
        set bonus = 100
    else if productivity > 30 then
        set bonus = 50
    else
        set bonus = 25
    end if
    
return bonus

DisplayResults(string name, string lastName, num productivity, num bonus)
    if productivity >= 50 then
        output "Employee name: " + name
        output "Employee last name: " + lastName
        output "Productivity: " + productivity + " ***"
        output "Bonus: " + bonus
    else
        output "Employee name: " + name
        output "Employee last name: " + lastName
        output "Productivity: " + productivity
        output "Bonus: " + bonus
    end if
return
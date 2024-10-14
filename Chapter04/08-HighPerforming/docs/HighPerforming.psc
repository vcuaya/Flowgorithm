/*
Problema:
    Amanda Cho, supervisora en una tienda minorista de ropa, desea
    reconocer a los vendedores de alto rendimiento. Diseñe lo siguiente:

    a) Un programa que acepte en forma continua el nombre y apellido de cada
    vendedor, el número de turnos que trabajó en un mes, número de transacciones
    que completó ese mes y el valor en monetario de esas transacciones.
    Despliegue el nombre de cada vendedor con una puntuación de productividad,
    misma que se calcula dividiendo primero el valor monetario de las
    transacciones entre el número de transacciones y dividiendo el resultado
    entre los turnos trabajados. Despliegue tres asteriscos después de la
    puntuación de productividad si es de 50 o más.

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
    end declare

    set employeeName = ReadString("Enter the name of the employee: ")
    set employeeLastName = ReadString("Enter the last name of the employee: ")
    set employeeTurns = ReadNumber("Enter the number of turns: ")
    set employeeTransactions = ReadNumber("Enter the number of transactions: ")
    set employeeValue = ReadNumber("Enter the value of the transactions: ")

    set productivity = CalculateProductivity(employeeValue, employeeTransactions, employeeTurns)

    call DisplayResults(employeeName, employeeLastName, productivity)

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

DisplayResults(string name, string lastName, num productivity)
    if productivity >= 50 then
        output "Employee name: " + name
        output "Employee last name: " + lastName
        output "Productivity: " + productivity + " ***"
    else
        output "Employee name: " + name
        output "Employee last name: " + lastName
        output "Productivity: " + productivity
    end if
return
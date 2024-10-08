/*
Problema:
    Drive-Rite Insurance Company proporciona pólizas de seguros para
    automóviles a los conductores. Diseñe:

    a) Un programa que acepte datos de pólizas de seguros, incluyendo el
    número de las mismas, apellido del cliente, nombre del cliente, edad,
    fecha de vencimiento de la prima (día, mes y año) y número de accidentes
    que ha tenido el conductor en los últimos tres años. Si un número de
    póliza introducido no está entre 1,000 y 9,999 inclusive, establezca el
    número de póliza en 0. Si el mes no está entre 1 y 12 inclusive, o el día
    no es correcto para el mes (por ejemplo, no está entre 1 y 31 para enero
    o 1 y 29 para febrero), establezca el día, mes y año en 0. Despliegue los
    datos de la póliza después que se hayan hecho cualesquiera revisiones.

Objetivos:
    Crear un programa que acepte datos de pólizas de seguros.

Entradas:
    Número de póliza
    Apellidos
    Nombre
    Edad
    Fecha de vencimiento de la prima
    Accidentes

Salidas:
    Datos de la póliza

Fórmulas:
    No aplica
*/

Main
    declare
        num policyNumber
        string lastName
        string firstName
        num age
        num day
        num month
        num year
        num accidents
    end declare

    set policyNumber = ReadNumber("Enter the policy number: ")
    set lastName = ReadString("Enter the last name: ")
    set firstName = ReadString("Enter the first name: ")
    set age = ReadNumber("Enter the age: ")
    set day = ReadNumber("Enter the day: ")
    set month = ReadNumber("Enter the month: ")
    set year = ReadNumber("Enter the year: ")
    set accidents = ReadNumber("Enter the number of accidents: ")

    if policyNumber < 1000 or policyNumber > 9999 then
        set policyNumber = 0
    end if
    if month < 1 or month > 12 then
        set month = 0
    end if
    if month == 1 or month == 3 or month == 5 or month == 7 or month == 8 or month == 10 or month == 12 then
        if day < 1 or day > 31 then
            set day = 0
        end if
    else if month == 4 or month == 6 or month == 9 or month == 11 then
        if day < 1 or day > 30 then
            set day = 0
        end if
    else if month == 2 then
        if day < 1 or day > 29 then
            set day = 0
        end if
    end if

    call DisplayPolicy(policyNumber, lastName, firstName, age, day, month, year, accidents)

    output "Program finished."
Stop

ReadNumber(string message)
    declare num number
    output message
    input number
return number

ReadString(string message)
    declare string text
    output message
    input text
return text

DisplayPolicy(num policyNumber, string lastName, string firstName, num age, num day, num month, num year, num accidents)
    output "Policy number: " + policyNumber
    output "Last name: " + lastName
    output "First name: " + firstName
    output "Age: " + age
    output "Day: " + day
    output "Month: " + month
    output "Year: " + year
    output "Accidents: " + accidents
return
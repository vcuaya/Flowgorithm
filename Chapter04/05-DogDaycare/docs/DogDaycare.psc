/*
Problema:
    The Barking Lot es una guardería para perros. Diseñe lo siguiente:

    a) Un programa que acepte datos para un número de ID del propietario de
    un perro, el nombre del perro, la edad del perro y el peso del perro.
    Despliegue una factura que contenga todos los datos de entrada al igual
    que la tarifa semanal de la guardería, la cual es de $55 para perros con
    menos de 7kg, $75 para perros entre 7kg y 14kg, $105 para perros entre
    14.1kg y 37kg y $125 para perros con más de 37kg.

    b) Un programa que acepte en forma continua los datos de los perros hasta
    que se introduzca un valor centineal y despliegue datos de facturación
    para cada perro.

Objetivos:
    Mostrar los datos de entrada al igual que la tarifa semanal

Entradas:
    ID del propietario
    Nombre del perro
    Edad del perro
    Peso del perro

Salidas:
    ID del propietario
    Datos del perro
    Tarifa semanal

Fórmulas:
    No aplica
*/

Main
    declare
        num idNumber
        string dogName
        num dogAge
        num dogWeight
        num weeklyFee
        const num SENTINEL = 0
    end declare

    set idNumber = ReadNumber("Enter the ID number of the owner or enter " + SENTINEL + " to finish: ")
    while idNumber != SENTINEL do
        set dogName = ReadString("Enter the name of the dog: ")
        set dogAge = ReadNumber("Enter the age of the dog: ")
        set dogWeight = ReadNumber("Enter the weight of the dog: ")
        set weeklyFee = CalculateWeeklyFee(dogWeight)
        
        call DisplayInvoice(idNumber, dogName, dogAge, dogWeight, weeklyFee)
        
        set idNumber = ReadNumber("Enter the ID number of the owner or enter " + SENTINEL + " to finish: ")
    end while

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

CalculateWeeklyFee(num weight)
    declare num weeklyFee
    if dogWeight < 7 then
        set weeklyFee = 55
    else if dogWeight >= 7 and dogWeight <= 14 then
        set weeklyFee = 75
    else if dogWeight > 14 and dogWeight <= 37 then
        set weeklyFee = 105
    else
        set weeklyFee = 125
    end if
return weeklyFee

DisplayInvoice(num idNumber, string dogName, num dogAge, num dogWeight, num weeklyFee)
    output "Owner ID: " + idNumber
    output "Dog name: " + dogName
    output "Dog age: " + dogAge
    output "Dog weight: " + dogWeight
    output "Weekly fee: " + weeklyFee
return
/*
Problema:
    Mark Daniels es un carpintero que crea letreros personalizados para casas.
    Desea una aplicación para calcular el precio de cualquier letrero que pida
    un cliente, con base en los siguientes factores:

    - El cargo mínimo para todos lo letreros es de $30.
    - No se agrega ningún cargo por pino pero si el letrero se hace de roble,
      se agrega $15.
    - Las primeras seis letras o números se incluyen en el cargo mínimo, hay un
    cargo de $3 por cada caracter adicional.
    - Los caracteres blancos o negros están incluidos en el cargo mínimo, hay un
    cargo adicional de $12 para letras laminadas en oro.

    Diseñe lo siguiente:

    a) Un programa que acepte datos para un número de pedido, nombre del cliente,
    tipo de madera, número de caracteres y color de los caracteres. Despliegue
    todos los datos introducidos y el precio final para el letrero.

    b) Un programa que acepte en forma continua datos de pedidos de letreros
    y despliegue toda la información relevante para los que son de roble con
    cinco letras blancas.

    c) Un programa que acepte en forma continua datos de pedidos de letreros
    y despliegue toda la información relevante para los que son de pino con 
    letras doradas y con más de 10 caracteres.

Objetivos:
    Mostrar los datos introducidos.
    Mostrar el precio final.

Entradas:
    ID del pedido
    Nombre del cliente
    Tipo de madera
    Cantidad de caracteres
    Color de los caracteres

Salidas:
    ID del pedido
    Nombre del cliente
    Tipo de madera
    Cantidad de caracteres
    Color de los caracteres
    Precio final

Fórmulas:
    Cargo minimo = $30
    Cargo adicional = $15 para madera de roble
    Cargo adicional = $3 por cada caracter adicional
    Cargo adicional = $12 por letras laminadas en oro
    Precio final = Cargo minimo + Cargos adicionales
*/

Main
    declare
        num idNumber
        string clientName
        string woodType
        num numCharacters
        string color
        num finalPrice
        const num SENTINEL = 999
    end declare

    set idNumber = ReadNumber("Enter the ID number or " + SENTINEL + " to finish: ")

    while idNumber != SENTINEL do
        set clientName = ReadString("Enter the client name: ")
        set woodType = ReadString("Enter the wood type (pine or oak): ")
        set numCharacters = ReadNumber("Enter the number of characters: ")
        set color = ReadString("Enter the color (white or black or gold): ")

        set finalPrice = CalculateFinalPrice(woodType, numCharacters, color)

        if woodType == "pine" and color == "gold"  and numCharacters >= 10 then
            call DisplayResults(idNumber, clientName, woodType, numCharacters, color, finalPrice)
        end if

        set idNumber = ReadNumber("Enter the ID number or " + SENTINEL + " to finish: ")
    end while

    output "Program finished."
Stop

ReadNumber(string message)
    declare num number
    output message
    input number
return number

ReadString(string message)
    declare textInput
    output message
    input textInput
return textInput

CalculateFinalPrice(string woodType, num numCharacters, string color)
    declare num finalPrice
    if woodType = "pine" then
        set finalPrice = 30
    else
        set finalPrice = 30 + 15
    end if
    if color = "gold" then
        set finalPrice = finalPrice + 12
    end if
    if numCharacters > 6 then
        set finalPrice = finalPrice + (numCharacters - 6) * 3
    end if
return finalPrice

DisplayResults(num idNumber, string clientName, string woodType, num numCharacters, string color, num finalPrice)
    output "ID number: " + idNumber
    output "Client name: " + clientName
    output "Wood type: " + woodType
    output "Number of characters: " + numCharacters
    output "Color: " + color
    output "Final price: " + finalPrice
return
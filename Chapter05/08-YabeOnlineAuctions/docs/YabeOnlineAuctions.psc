/*
    Problema:
        Yabe Online Auctions requiere que sus vendedores publiquen los
        artículos para venta por un periodo de seis semanas durante el que
        el precio de cualquier artículo no vendido baja 12% cada semana.
        Por ejemplo, uno que cuesta $10 durante la primera semana cuesta
        12% menos durante la segunda semana, durante la tercera semana el
        mismo artículo cuesta 12% menos y así sucesivamente. Diseñe una
        aplicación que permita a un usuario introducir precios hasta que se
        introduzca un valor centinela apropiado. La salida del programa es
        el precio de cada artículo durante cada semana, de la primera a la
        sexta.

    Objetivos:
        Mostrar el precio de cada artículo durante cada semana.

    Entradas:
        Precio inicial.

    Salidas:
        Precio a publicar por semana.

    Fórmulas:
        Precio de cada semana = Precio inicial * (1 - 0.12)
*/

Main
    declare
        string productId
        string productName
        num initialPrice
        num currentPrice
        const string SENTINEL = "exit"
        const num RATE = 0.12
        const num WEEKS = 6
        num week
    end declare

    set productId = ReadString("Enter product ID or " + SENTINEL + " to finish: ")
    
    while productId != SENTINEL do
        set productName = ReadString("Enter product name: ")
        set initialPrice = ReadNumber("Enter initial price: ")

        set currentPrice = initialPrice

        output "Product ID: " + productId
        output "Product name: " + productName
        output "Initial price: " + initialPrice
        
        for week = 1 to WEEKS step 1
            if week != 1 then
                set currentPrice = currentPrice * (1 - RATE)
            end if

            output "Week " + week + ": " + currentPrice
        end for

        set productId = ReadString("Enter product ID or " + SENTINEL + " to finish: ")
    end while

    output "Program finished."
Stop

ReadString(string message)
    declare string text
    output message
    input text
return text

ReadNumber(string message)
    declare num number
    output message
    input number
return number
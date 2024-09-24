/*
Problema:
    ShoppingBay es un servicio de subasta en línea que requiere varios informes.
    
    a) Un programa que acepte datos de la subasta como sigue: número de ID,
    descripción del artículo, duración de la subasta en días y oferta mínima
    requerida. Despliegue datos para una subasta si la oferta mínima requerida
    es más de 100 dólares.

    b) Un programa que acepte en forma continua datos de la subasta hasta que se
    introduzca un valor centinela y despliegue una lista de todos los datos para
    subastas en las que la oferta mínima requerida sea mayor que 100 dólares.

    c) Un programa que acepte en forma continua datos de la subasta y despliegue
    datos para cada subasta en la que la oferta mínima sea $0.00 y la duración
    de la subasta sea un día o menos.

Objetivos:
    Desplegar datos de subasta si la oferta mínima requerida es más de 100 dólares.

Entradas:
    ID
    Descripción del artículo
    Duración de la subasta en días
    Oferta mínima requerida

Salidas:
    ID
    Descripción del artículo
    Duración de la subasta en días
    Oferta mínima requerida

Fórmulas:
    No aplica
*/

Main
    declare
        num idNumber
        string description
        num duration
        num minBid
        num SENTINEL
    end declare

    set SENTINEL = 0

    set idNumber = ReadNumber("Enter ID number: ")

    while idNumber != SENTINEL do
        set description = ReadString("Enter description: ")
        set duration = ReadNumber("Enter duration in days: ")
        set minBid = ReadNumber("Enter minimum bid: ")

        if minBid == 0 && duration <= 1 then
            ShowAuction(idNumber, description, duration, minBid)
        end if

        set idNumber = ReadNumber("Enter ID number: ")
    end while

    output "End of program"
Stop

ReadNumber (string message)
    declare num number
    output message
    input number
return number

ReadString (string message)
    declare string text
    output message
    input text
return text

ShowAuction (num id, string description, num duration, num minBid)
    output "ID: " + id
    output "Description: " + description
    output "Duration: " + duration
    output "Minimum bid: " + minBid
return
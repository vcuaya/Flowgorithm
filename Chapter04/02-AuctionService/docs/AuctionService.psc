/*
Problema:
    ShoppingBay es un servicio de subasta en línea que requiere varios informes.
    
    a) Un programa que acepte datos de la subasta como sigue: número de ID,
    descripción del artículo, duración de la subasta en días y oferta mínima
    requerida. Despliegue datos para una subasta si la oferta mínima requerida
    es más de 100 dólares.

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
    end declare

    set idNumber = ReadNumber("Enter ID number: ")
    set description = ReadString("Enter description: ")
    set duration = ReadNumber("Enter duration in days: ")
    set minBid = ReadNumber("Enter minimum bid: ")

    if 100 < minBid then
        ShowAuction(idNumber, description, duration, minBid)
    end if

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
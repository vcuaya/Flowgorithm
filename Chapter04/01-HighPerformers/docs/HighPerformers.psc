/*
Problema:
    Mortimer Life Insurance Company desea varias listas de datos de personal
    de ventas.

    a) Un programa que acepte el número de ID de un vendedor y el número de
    pólizas vendidas en el último mes, y despliegue los datos sólo si el
    vendedor tiene un alto rendimiento, una persona que vende más de 25
    pólizas en el mes.

    b) Un programa que acepte datos del vendedor en forma continua hasta que
    se introduzca un valor centinela y despliegue una lista de personas de
    alto rendimiento.

Objetivos:
    Desplegar los datos de los vendedores que vendieron más de 25 pólizas.

Entradas:
    Número ID del vendedor
    Número de pólizas vendidas

Salidas:
    Datos del vendedor

Fórmulas:
    No aplica
*/

Main
    declare
        num idVendedor
        num polizasVendidas
    end declare

    set idVendedor = ReadNumber("Introduzca el número ID del vendedor (0 para salir): ")

    while idVendedor != 0 do
        set polizasVendidas = ReadNumber("Introduzca el número de pólizas vendidas: ")

        if polizasVendidas > 25 then
            Call HighPerformer(idVendedor, polizasVendidas)
        end if

        set idVendedor = ReadNumber("Introduzca el número ID del vendedor (0 para salir): ")
    end while

    output "Fin del programa."
Stop

ReadNumber(string message)
    declare num number
    output message
    input number
return number

HighPerformer(num idVendedor, num polizasVendidas)
    output "ID del vendedor: " + idVendedor
    output "Pólizas vendidas: " + polizasVendidas
return
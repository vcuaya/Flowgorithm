/*
    Problema:
        Diseñe la lógica para un programa que de como salida todos los
        números de 1 al 20 junto con su valor al doble y al triple.

    Objetivo:
        Imprimir los números de 1 a 20 y sus valores al doble y al triple

    Entradas:
        Ninguna

    Salidas:
        Valores originales
        Valores al doble
        Valores al triple

    Fórmulas:
        No aplica
*/

Main
    declare num number

    for number = 1 to 20 step 1
        output "Original: " + number
        output "Doble: " + (number * 2)
        output "Triple: " + (number * 3)
    end for

    output "Program finished"
Stop
/*
    Problema:
        Deiseñe la lógica para un programa que permita a un usuario
        introducir un número. Despliegue la suma de todos los números desde
        1 hasta el número introducido.

    Objetivo:
        Sumar todos los números desde 1 hasta N.

    Entradas:
        Un número.

    Salidas:
        La suma de todos los números.

    Fórmulas:
        Suma = 1 + 2 + 3 + ... + N
*/

Main
    declare
        num number
        num index
        num sum
    end declare

    set number = ReadNumber("Enter a number: ")
    set sum = 0

    for index = 1 to number step 1
        set sum = sum + index
    end for

    output "The sum from 1 to " + number + " is: " + sum

    output "Program finished"
Stop

ReadNumber(string message)
    declare num number
    output message
    input number
return number
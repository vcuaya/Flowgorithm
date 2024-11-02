/*
    Problema:
        Diseñe la lógica para un programa que permita a un usuario
        introducir 15 números y que luego los despliegue en el orden
        inverso al de entrada.

        a) Modifique el programa de despliegue invertido de modo que el
        usuario pueda introducir cualquier cantidad de números menores que
        15 hasta que se introduzca un valor centinela.

    Objetivos:
        Desplegar los datos en orden inverso

    Entradas:
        Cualquier cantidad de números

    Salidas:
        15 números en orden inverso

    Fórmulas:
        No aplica
*/

Main
    declare
        const num SENTINEL = 0
        const num SIZE = 100
        num numbers[SIZE]
        num index
        num number
    end declare

    set index = 0

    number = ReadNumber("Enter an integer number or " + SENTINEL + " to finish: ")

    while number != SENTINEL do
        set numbers[index] = number
        set number = ReadString("Enter an integer number or " + SENTINEL + " to finish: ")
        set index = index + 1
    end while

    for index = index - 1 to 0 step -1
        output "Number [" + (index + 1) + "]: " + numbers[index]
    end for

    output "Program finished"
Stop
/*
    Problema:
        Diseñe la lógica para un programa que permita a un usuario
        introducir 15 números y que luego los despliegue en el orden
        inverso al de entrada.

    Objetivos:
        Desplegar los datos en orden inverso

    Entradas:
        15 números

    Salidas:
        15 números en orden inverso

    Fórmulas:
        No aplica
*/

Main
    declare
        const num SIZE = 15
        num numbers[SIZE]
        num index
    end declare

    for index = 0 to SIZE - 1 step 1
        set numbers[index] = ReadNumber("Enter an integer number [" + (index + 1) + "]: ")
    end for

    for index = SIZE - 1 to 0 step -1
        output "Number [" + (index + 1) + "]: " + numbers[index]
    end for

    output "Program finished"
Stop
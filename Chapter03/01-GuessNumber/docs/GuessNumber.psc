/*
Problema:
    Trace un diagrama de flujo estructurado o escriba seudocódigo que expliquen
    el proceso de adivinar un número entre 1 y 100. Después de cada intento, se
    dice al jugador que la suposición es demasiado alta o demasiado baja. El
    proceso continúa hasta que el jugador adivina el número correcto. Escoja un
    número y haga que un compañero(a) trate de adivinarlo.

    a) Agregar centinela 0 para rendirse.

Objetivo:
    Adivinar un número entre 1 y 100.
    Agregar centinela 0 para rendirse.

Entradas:
    Número entero por adivinar.
    Número entero por el jugador que intenta adivinar.

Salidas:
    Mensaje indicando si el número es demasiado alto o demasiado bajo.
    Mensaje indicando que el número fue adivinado.
    Mensaje indicando el número por adivinar, en caso de rendirse.

Fórmulas:
    No aplica.
*/

Main
    declare
        num numberToGuess
        num numberGuessed
        string message = "Ingresa el número que crees correcto (0 para rendirte): "
    end declare

    set numberToGuess = ReadNumber("Ingresa el número por adivinar: ")
    
    set numberGuessed = ReadNumber(message)

    while numberGuessed != 0 and numberGuessed != numberToGuess do
        if numberToGuess < numberGuessed then
            output "El número es demasiado alto."
        else
            output "El número es demasiado bajo."
        end if

        set numberGuessed = ReadNumber(message)
    end while

    if numberGuessed == 0 then
        output "Te has rendido. El número por adivinar era: " + numberToGuess
    else
        output "¡Felicidades! El número por adivinar era: " + numberToGuess
    end if
    output "Fin del programa."
Stop

ReadNumber(message)
    declare num number
    output message
    input number
return number
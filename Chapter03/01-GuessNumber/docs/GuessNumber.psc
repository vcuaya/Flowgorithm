/*
Problema:
    Trace un diagrama de flujo estructurado o escriba seudocódigo que expliquen
    el proceso de adivinar un número entre 1 y 100. Después de cada intento, se
    dice al jugador que la suposición es demasiado alta o demasiado baja. El
    proceso continúa hasta que el jugador adivina el número correcto. Escoja un
    número y haga que un compañero(a) trate de adivinarlo.

Objetivo:
    Adivinar un número entre 1 y 100.

Entradas:
    Número entero por adivinar.
    Número entero por el jugador que intenta adivinar.

Salidas:
    Mensaje indicando si el número es demasiado alto o demasiado bajo.
    Mensaje indicando que el número fue adivinado.

Fórmulas:
    No aplica.
*/

Main
    declare
        num numberToGuess
        num numberGuessed
    end declare

    set numberToGuess = ReadNumber("Ingresa el número por adivinar: ")
    
    set numberGuessed = ReadNumber("Ingresa el número que crees correcto: ")

    while numberGuessed != numberToGuess do
        if numberToGuess < numberGuessed then
            output "El número es demasiado alto."
        else
            output "El número es demasiado bajo."
        end if

        set numberGuessed = ReadNumber("Ingresa el número que crees correcto: ")
    end while

    output "¡Felicidades Adivinaste! El número por adivinar era: " + numberToGuess
    output "Fin del programa."
Stop

ReadNumber(message)
    declare num number
    output message
    input number
return number
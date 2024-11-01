/*
    Problema:
        Diseñe un programa para la Hollywood Movie Rating Guide, que pueda
        instalarse en un kiosko en los cines; cada cliente del cine
        introduce un valor de 0 a 4 indicando el número de estrellas con
        las que calificaa a la película de la semana que se presenta en la
        guía. Si un usuario introduce un valor que no queda en el rango
        correcto, vuelva a indicarle varias veces hasta que introduzca un
        valor correcto. El programa se ejecuta en forma continua hasta que
        el gerente del cine introduce un número negativo para salir. Al
        final del programa, despliegue la clasificación de estrellas
        promedio para la película.

    Objetivos:
        Desplegar la clasificación de estrellas promedio

    Entradas:
        Valor de estrellas

    Salidas:
        Clasificación de estrellas promedio

    Fórmulas:
        Estrellas promedio =  Sumatoria de estrellas / Número de clientes
*/

Main
    declare
        num stars
        num totalStars
        num totalClients
        num avgStars
    end declare

    set totalStars = 0
    set totalClients = 0

    set stars = ReadNumber("Enter the number of stars between 0 and 4: ")

    while stars >= 0 do
        if stars > 4 then
            output "The number of stars must be between 0 and 4."
        else
            set totalStars = totalStars + stars
            set totalClients = totalClients + 1
        end if

        set stars = ReadNumber("Enter the number of stars between 0 and 4: ")
    end while

    if totalClients > 0 then
        set avgStars = totalStars / totalClients
    else
        set avgStars = 0
    end if

    output "The average number of stars is: " + avgStars
Stop

ReadNumber(string message)
    declare num number
    output message
    input number
return number
/*
Problem:
    a) Trace la gráfica de jerarquía y diseñe la lógica para un programa que
    necesita el gerente del equipo de softball del condado Stengel, quien
    desea calcular los porcentajes de slugging para sus jugadores. Un
    porcentaje de slugging es el total de bases alcanzadas dividido entre
    el número de turnos al bate del jugador. Diseñe un programa que pida
    al usuario el número de camiseta de un jugador, el número de bases
    alcanzadas y el número de turnos al bate y luego despliegue todos los
    datos, incluyendo el promedio de slugging calculado. El programa
    acepta jugadores en forma continua hasta que se introduce 0 para el
    número de camiseta. Use módulos apropiados, incluyendo uno que
    despliegue "Fin de trabajo", después de que se introduce el centinela
    para el número de camiseta.

Objectives:
    Calculate the slugging percentage of a softball player.

Inputs:
    Player's number.
    Number of bases reached.
    Number of turns at bat.

Outputs:
    Player's number.
    Number of bases reached.
    Number of turns at bat.
    Slugging percentage.

Formulas:
    Slugging percentage = (Number of bases reached) / (Number of turns at bat)
*/

Main
    declare
        num playerNumber
        num basesReached
        num turnsAtBat
        num sluggingPercentage
    end declare

    set playerNumber = ReadNumber("Enter the player's number or 0 to finish: ")
    while playerNumber != 0 do
        set basesReached = ReadNumber("Enter the number of bases reached: ")
        set turnsAtBat = ReadNumber("Enter the number of turns at bat: ")

        set sluggingPercentage = CalculateSluggingPercentage(basesReached, turnsAtBat)

        Call DisplayResults(playerNumber, basesReached, turnsAtBat, sluggingPercentage)

        set playerNumber = ReadNumber("Enter the player's number or 0 to finish: ")
    end while

    Call DisplayEndOfWork()
Stop

ReadNumber(string message)
    declare num number
    output message
    input number
return number

CalculateSluggingPercentage(num basesReached, num turnsAtBat)
    declare num sluggingPercentage
    set sluggingPercentage = basesReached / turnsAtBat
return sluggingPercentage

DisplayResults(num playerNumber, num basesReached, num turnsAtBat, num sluggingPercentage)
    output "Player's number: " & playerNumber
    output "Number of bases reached: " & basesReached
    output "Number of turns at bat: " & turnsAtBat
    output "Slugging percentage: " & sluggingPercentage
return

DisplayEndOfWork()
    output "End of work"
return
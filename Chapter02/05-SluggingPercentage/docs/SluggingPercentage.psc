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

    b) Modifique el programa de porcentaje de slugging para calcular también
    el porcentaje de veces que se embasa un jugador. Un porcentaje de veces
    que se embasa se calcula sumando los hits y bases por bolas de un jugador
    y luego se divide entre la suma de turnos al bate, bases por bolas y
    elevados de sacrificio. Pida al usuario con un indicador todos los datos
    adicionales necesarios y despliegue todos los datos para cada jugador.

    c) Modifique el programa de softball de modo que también calcule el
    promedio de producción bruta (GPA, Gross Production Average) para cada
    jugador. El GPA se calcula multiplicando el porcentaje de veces que cada
    jugador se embasa por 1.8 y luego sumando el porcentaje de slugging del
    jugador y dividiendo el resultado entre 4. 

Objectives:
    Calculate the slugging percentage of a softball player.
    Calculate the on-base percentage of a softball player.
    Calculate the gross production average of a softball player.

Inputs:
    Player's number.
    Number of bases reached.
    Number of turns at bat.
    Number of hits.
    Number of walks.
    Number of sacrifice flies.

Outputs:
    Player's number.
    Number of bases reached.
    Number of turns at bat.
    Slugging percentage.
    On-base percentage.
    Gross production average.

Formulas:
    Slugging percentage = (Number of bases reached) / (Number of turns at bat)
    On-base percentage = (Number of hits + Number of walks) / (Number of turns at bat + Number of walks + Number of sacrifice flies)
    Gross production average = ((On-base percentage * 1.8) + Slugging percentage) / 4
*/

Main
    declare
        num playerNumber
        num basesReached
        num turnsAtBat
        num hits
        num walks
        num sacrificeFlies
        num sluggingPercentage
        num onBasePercentage
        num grossProductionAverage
    end declare

    set playerNumber = ReadNumber("Enter the player's number or 0 to finish: ")
    while playerNumber != 0 do
        set basesReached = ReadNumber("Enter the number of bases reached: ")
        set turnsAtBat = ReadNumber("Enter the number of turns at bat: ")
        set hits = ReadNumber("Enter the number of hits: ")
        set walks = ReadNumber("Enter the number of walks: ")
        set sacrificeFlies = ReadNumber("Enter the number of sacrifice flies: ")

        set sluggingPercentage = CalculateSluggingPercentage(basesReached, turnsAtBat)
        set onBasePercentage = CalculateOnBasePercentage(hits, walks, turnsAtBat, sacrificeFlies)
        set grossProductionAverage = CalculateGrossProductionAverage(onBasePercentage, sluggingPercentage)

        Call DisplayResults(playerNumber, basesReached, turnsAtBat, hits, walks, sacrificeFlies, sluggingPercentage, onBasePercentage, grossProductionAverage)

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

CalculateOnBasePercentage(num hits, num walks, num turnsAtBat, num sacrificeFlies)
    declare num onBasePercentage
    set onBasePercentage = (hits + walks) / (turnsAtBat + walks + sacrificeFlies)
return onBasePercentage

CalculateGrossProductionAverage(num onBasePercentage, num sluggingPercentage)
    declare num grossProductionAverage
    set grossProductionAverage = ((onBasePercentage * 1.8) + sluggingPercentage) / 4
return grossProductionAverage

DisplayResults(num playerNumber, num basesReached, num turnsAtBat, num hits, num walks, num sacrificeFlies, num sluggingPercentage, num onBasePercentage, num grossProductionAverage)
    output "Player's number: " + playerNumber
    output "Number of bases reached: " + basesReached
    output "Number of turns at bat: " + turnsAtBat
    output "Number of hits: " + hits
    output "Number of walks: " + walks
    output "Number of sacrifice flies: " + sacrificeFlies
    output "Slugging percentage: " + sluggingPercentage
    output "On-base percentage: " + onBasePercentage
    output "Gross production average: " + grossProductionAverage
return

DisplayEndOfWork()
    output "End of work"
return
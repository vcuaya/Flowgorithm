/*
Problema:

    Trace la gráfica de jerarquía y diseñe la lógica para un programa que calcule
    el costo proyectado de un viaje en automóvil. Suponga que el vehículo del
    usuario viaja a 8 kilómetros por litro de gasolina. Diseñe un programa que pida
    al usuario el número de kilómetros recorridos y el costo actual por litro. El
    programa calcula y despliega el costo del viaje al igual que el costo si los
    precios de la gasolina aumentan 10%; acepta datos en forma continua hasta que se
    introduce 0 para el número de kilómetros. Use los módulos apropiados, incluyendo
    uno que despliegue "Fin del programa" cuando éste termine.

Objetivo:
    Calcular el costo proyectado de un viaje en automóvil

Entradas:
    Número de kilómetros recorridos
    Costo actual por litro

Salidas:
    Costo del viaje
    Costo del viaje si los precios de la gasolina aumentan 10%

Constantes:
    Rendimiento del vehículo = 8 km/l
    Aumento de precio = 10%

Formulas:
    Costo del viaje = (Número de kilómetros recorridos / 8) * Costo actual por litro
    Costo del viaje con aumento = Costo del viaje * 1.10
*/

Main
    declare
        num kilometers
        num costGas
        num costTrip
        num costTripIncrease
        const num FUEL_EFFICIENCY = 8
        const num PRICE_INCREASE = 1.10
    end declare

    set kilometers = ReadNumber("Enter the number of kilometers or type 0 to exit: ")
    
    while kilometers != 0 do
        set costGas = ReadNumber("Enter the cost of gas: ")
        set costTrip = (kilometers / FUEL_EFFICIENCY) * costGas
        set costTripIncrease = costTrip * PRICE_INCREASE
        
        output "The cost of the trip is: " + costTrip
        output "The cost of the trip with a 10% increase is: " + costTripIncrease
        
        set kilometers = ReadNumber("Enter the number of kilometers or type 0 to exit: ")
    end while
    
    call Finish()
Stop

ReadNumber(string message)
    declare num number
    output message
    input number
return number

Finish
    output "End of the program"
return
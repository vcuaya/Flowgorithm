/*
* a) Representar la lógica de un programa que permita al usuario introducir
* valores para el ancho y el largo de una pared en metros. El programa
* da salida al área de la pared en metros cuadrados.
*
* b) Modifique el programa para permitir al usuario introducir el precio de
* un galón de pintura. Suponga que un galón de pintura cubre 35 metros cuadrados
* de una pared. El programa da salida al número de galones necesarios y el costo
* del trabajo. (Para este ejercicio suponga que no necesita tomar en cuenta las
* ventanas o puertas y que puede comprar galones de pintura completos.).
*
* a) Represent the logic of a program that allows the user to enter
* values for the width and length of a wall in meters. The program
* outputs the area of the wall in square meters.
*
* b) Modify the program to allow the user to enter the price of
* a gallon of paint. Assume that a gallon of paint covers 35 square meters
* of a wall. The program outputs the number of gallons needed and the cost
* of the work. (For this exercise assume that you do not need to take into account the
* windows or doors and that you can buy complete gallons of paint.).
*/

main
    declare
        num width
        num length
        num area
        num price
        num gallons
        num total
        const GALLON_COVERAGE = 35
    end declare

    set width = ReadNumber("Enter the width of the wall in meters: ")
    set length = ReadNumber("Enter the length of the wall in meters: ")
    set area = CalculateArea(width, length)
    
    output "The area of the wall is " + area + " square meters."

    set price = ReadNumber("Enter the price of a gallon of paint: ")
    set gallons = CalculateGallons(area, GALLON_COVERAGE)
    set total = CalculateTotal(gallons, price)

    output "You will need " + gallons + " gallons of paint."
    output "The total cost of the work is $" + total
    output "Program ended."
stop

ReadNumber(string message)
    declare num number
    output message
    input number
return number

CalculateArea(num width, num length)
    declare num area
    set area = width * length
return area

CalculateGallons(num area, num coverage)
    declare num gallons
    set gallons = RoundUp(area / coverage)
return gallons

CalculateTotal(num gallons, num price)
    declare num total
    set total = gallons * price
return total

RoundUp(real number)
    declare integer rounded
    set rounded = number
    if 0 < number - rounded then
        set rounded = rounded + 1
    end if
return rounded
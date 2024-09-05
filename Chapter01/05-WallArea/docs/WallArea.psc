/*
* a) Representar la lógica de un programa que permita al usuario introducir
* valores para el ancho y el largo de una pared en metros. El programa
* da salida al área de la pared en metros cuadrados.
*
* a) Represent the logic of a program that allows the user to enter
* values for the width and length of a wall in meters. The program
* outputs the area of the wall in square meters.
*/

main
    declare
        num width
        num length
        num area
    end declare

    set width = ReadNumber("Enter the width of the wall in meters: ")
    set length = ReadNumber("Enter the length of the wall in meters: ")
    set area = CalculateArea(width, length)

    output "The area of the wall is " + area + " square meters."
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
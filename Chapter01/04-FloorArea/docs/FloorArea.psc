/*
* Representar la lógica de un programa que permita al usuario
* introducir valores para el ancho y el largo del piso de un
* salón en metros. El programa da salida al área del piso en
* metros cuadrados.
*
* Represent the logic of a program that allows the user to
* enter values for the width and length of the floor of a
* room in meters. The program outputs the area of the floor
* in square meters.
*/

main
    declare
        num width
        num length
        num area
    end declare

    set width = ReadNumber("Enter the width of the floor in meters: ")
    set length = ReadNumber("Enter the length of the floor in meters: ")
    set area = width * length

    output "The area of the floor is ", area, " square meters."
    output "Program ends."
stop

ReadNumber(message)
    declare num number
    output message
    input number
return number
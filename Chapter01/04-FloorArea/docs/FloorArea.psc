/*
* a) Representar la lógica de un programa que permita al usuario
* introducir valores para el ancho y el largo del piso de un
* salón en metros. El programa da salida al área del piso en
* metros cuadrados.
*
* b) Modifique el programa para que calcule y de salida al número
* de mosaicos de 30 cm cuadrados que se necesitan para cubrir
* el piso.
*
* a) Represent the logic of a program that allows the user to
* enter values for the width and length of the floor of a
* room in meters. The program outputs the area of the floor
* in square meters.
*
* b) Modify the program to calculate and output the number of
* 30 cm square tiles needed to cover the floor.
*/

main
    declare
        num width
        num length
        num area
        num tiles
        const num TILE_AREA = 0.09 // 1m = 100cm, 0.3m * 0.3m = 0.09m^2
    end declare

    set width = ReadNumber("Enter the width of the floor in meters: ")
    set length = ReadNumber("Enter the length of the floor in meters: ")
    set area = width * length
    set tiles = area / TILE_AREA

    output "The area of the floor is " + area + " square meters."
    output "You need " + tiles + " 30 cm square tiles to cover the floor."
    output "Program ends."
stop

ReadNumber(string message)
    declare num number
    output message
    input number
return number
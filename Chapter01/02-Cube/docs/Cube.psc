/*
* El programa permite al usuario introducir un valor para una arista
* de un cubo, calcula el área de la superficie de un lado del cubo,
* el área total de la superficie del cubo y el volumen del cubo.
*
* The program allows the user to input a value for an edge of a cube,
* calculates the area of one side of the cube, the total surface area
* of the cube, and the volume of the cube.
*/

main
    declare
        edge
        sideArea
        totalArea
        volume
    end declare
    
    set edge = ReadNumber("Enter the edge of the cube: ")
    set sideArea = edge * edge
    set totalArea = sideArea * 6
    set volume = edge * edge * edge

    output "The area of one side of the cube is: " + sideArea
    output "The total surface area of the cube is: " + totalArea
    output "The volume of the cube is: " + volume
    output "Program ends."
stop

ReadNumber(string message)
    declare userInput
    
    output message
    
    input userInput
return userInput
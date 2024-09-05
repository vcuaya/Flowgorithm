/*
* Representar la lógica de un programa que permite al usuario introducir
* dos valores. El programa da salida al producto de ambos valores.
*
* Represent the logic of a program that allows the user to input two values.
* The program outputs the product of both values.
*/

main
    declare
        numberA
        numberB
        result
    
    set numberA = ReadNumber("Enter the first number: ")
    set numberB = ReadNumber("Enter the second number: ")
    set result = Product(numberA, numberB)

    output "The product of " + numberA + " and " + numberB + " is: " + result
    output "Program ends."
stop

ReadNumber(string message)
    declare userInput
    
    output message
    
    input userInput
return userInput

Product(numberA, numberB)
    declare result
    
    set result = numberA * numberB
return result
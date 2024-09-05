main
    comment "This program divides a number by 2"
    
    declare
        number
        result
    end declare
    
    set number = ReadNumber("Introduce un número")
    set result = Divide(number, 2)
    
    output "El resultado de dividir " + number + " entre 2 es " + result
    output "Fin del programa"
stop

ReadNumber(string message)
    declare userInput
    output message
    input userInput
return userInput

Divide(number, divisor)
    declare result
    set result = number / divisor
return result
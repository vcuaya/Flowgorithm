/*
* Investigue las tasas actuales de cambio monetario. Represente
* la lógica de un programa que permita al usuario introducir un
* número de dólares y convertirlos a euros y a yenes.
*
* 1 dólar = 0.85 euros
* 1 dólar = 110.31 yenes
*
* Investigate the current exchange rates. Represent the logic of a
* program that allows the user to enter a number of dollars and
* convert them to euros and yen.
*
* 1 dollar = 0.85 euros
* 1 dollar = 110.31 yen
*/

main
    declare
        num dollars
        num euros
        num yenes
    end declare

    set dollars = ReadNumber("Enter the amount of dollars: ")
    set euros = CalculateEuros(dollars)
    set yenes = CalculateYenes(dollars)

    output "The amount of dollars is: " + dollars
    output "The amount of euros is: " + euros
    output "The amount of yenes is: " + yenes
    output "Program finished"
stop

ReadNumber(string message)
    declare num number
    output message
    input number
return number

CalculateEuros(num dollars)
    declare num euros
    declare const num EXCHANGE_RATE = 0.85
    set euros = dollars * EXCHANGE_RATE
return euros

CalculateYenes(num dollars)
    declare num yenes
    declare const num EXCHANGE_RATE = 110.31
    set yenes = dollars * EXCHANGE_RATE
return yenes
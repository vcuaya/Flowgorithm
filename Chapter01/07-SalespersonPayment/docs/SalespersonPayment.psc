/*
* Represente la lógica de un programa que permita al usuario
* introducir valores para el salario base, las ventas totales
* y la tasa de comisión de un vendedor. El programa calcula
* y da salida al pago del vendedor agregando el salario base
* al producto de las ventas totales y la tasa de comisión.
*
* Represent the logic of a program that allows the user to
* enter values for the base salary, total sales, and the
* commission rate of a salesperson. The program calculates
* and outputs the salesperson's payment by adding the base
* salary to the product of the total sales and the commission.
*/

main
    declare
        num baseSalary
        num totalSales
        num commissionRate
        num payment
    end declare

    set baseSalary = ReadNumber("Enter the base salary: ")
    set totalSales = ReadNumber("Enter the total sales: ")
    set commissionRate = ReadNumber("Enter the commission rate: ")
    set payment = CalculatePayment(baseSalary, totalSales, commissionRate)

    output "The payment is: " + payment
    output "Program finished"
stop

ReadNumber(string message)
    declare num number
    output message
    input number
return number

CalculatePayment(num baseSalary, num totalSales, num commissionRate)
    declare num payment
    set payment = baseSalary + totalSales * commissionRate / 100
return payment
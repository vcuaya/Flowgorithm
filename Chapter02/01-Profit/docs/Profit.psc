/*
Objetivo:
    Calcular la ganancia.

Entradas:
    Precio de venta.
    Precio de compra.

Salidas:
    Ganancia.

Objective:
    Calculate the profit.

Inputs:
    Selling price.
    Purchase price.

Outputs:
    Profit.
*/

Main
    declare
        num sellingPrice
        num purchasePrice
        num profit
    end declare
    set sellingPrice = ReadNumber("Enter the selling price: ")
    set purchasePrice = ReadNumber("Enter the purchase price: ")
    set profit = sellingPrice - purchasePrice
    output "The profit is: " + profit
    output "Program finished"
stop
/*
Objetivo:
    Calcular la ganancia, mientras el usuario no ingrese 0.

Entradas:
    Precio de venta.
    Precio de compra.

Salidas:
    Ganancia parcial.
    Ganancia total.

Objective:
    Calculate the profit, while the user does not enter 0.

Inputs:
    Selling price.
    Purchase price.

Outputs:
    Profit per sale.
    Total profit.
*/

Main
    declare
        num sellingPrice
        num purchasePrice
        num profit
        num totalProfit
        const num CENTINEL_PROFIT = 0
    end declare
    
    set totalProfit = 0
    set sellingPrice = ReadNumber("Enter the selling price: ")
    
    while sellingPrice is not CENTINEL_PROFIT then
        set purchasePrice = ReadNumber("Enter the purchase price: ")
        set profit = sellingPrice - purchasePrice
        set totalProfit = totalProfit + profit
    
        output "The profit is: " + profit
    
        set sellingPrice = ReadNumber("Enter the selling price: ")
    end while

    output "The total profit is: " + totalProfit
    output "Program finished"
stop
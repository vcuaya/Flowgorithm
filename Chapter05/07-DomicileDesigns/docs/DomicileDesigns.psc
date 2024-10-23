/*
    Problema:
        Diseñe una aplicación para Domicile Designs que obtenga los datos
        de las transacciones de ventas, incluidos un número de cuenta,
        nombre del cliente y precio de compra. La tienda carga 1.25% de
        interés sobre el saldo deudor cada mes durante los siguientes 12
        meses. Suponga que cuando el saldo llegue a $25 o menos, el cliente
        puede liquidar la cuenta. Al principio de cada mes, se agrega 1.25%
        de interés al saldo, y luego el cliente hace un pago igual a 7% del
        saldo actual. Suponga que el cliente no hace compras nuevas.

    Objetivo:
        Mostrar los datos del cliente y la deuda desglosada por mes.

    Entradas:
        Número de cuenta.
        Nombre del cliente.
        Precio de compra.

    Salidas:
        Deuda desglosada por mes.

    Fórmulas:
        Deuda = Precio de compra * 1.25%
        Pago = Deuda * 7%
*/

Main
    declare
        string accountNumber
        string customerName
        num purchase
        num balance
        num payment
        const num INTEREST_RATE = 0.0125
        const num PAYMENT_RATE = 0.07
        const num MONTHS = 12
        num month
    end declare

    set accountNumber = ReadNumber("Enter account number: ")
    set customerName = ReadString("Enter customer name: ")
    set purchase = ReadNumber("Enter purchase amount: ")
    set balance = purchase

    output "Account number: " + accountNumber
    output "Customer name: " + customerName
    output "Purchase amount: " + purchase

    set month = 1
    while month <= MONTHS and balance > 25 do
        output "Initial balance is " + balance
        
        set balance = balance * (1 + INTEREST_RATE)
        output "Balance after interest is " + balance

        set payment = balance * PAYMENT_RATE
        output "Payment is " + payment
        
        if payment > balance then
            set payment = balance
        end if

        set balance = balance - payment

        set month = month + 1
    end while

    if balance <= 25 then
        output "Customer can liquidate. Final balance is " + balance
    else
        output "Final balance after 12 months is " + balance
    end if

    output "Program finished."
Stop
/*
    Problema:
        Diseñe una aplicación para Homestead Furniture Store que obtenga
        los datos de las transacciones de ventas, incluidos un número de
        cuenta, nombre del cliente y precio de compra. De salida al número
        de cuenta y nombre y luego al pago del cliente cada mes durante los
        siguientes 12 meses. Suponga que no hay cargos por financiamiento,
        que el cliente no hace compras nuevas y que liquida el saldo con
        pagos mensuales iguales.

    Objetivos:
        Mostrar los datos del cliente y la deuda desglosada por mes.

    Entradas:
        Número de cuenta.
        Nombre del cliente.
        Precio de compra.

    Salidas:
        Número de cuenta.
        Nombre del cliente.
        Pago mensual.

    Fórmulas:
        Pago mensual = Precio de compra / 12
*/

Main
    declare
        string accountNumber
        string customerName
        num purchase
        num index
        num payment
    end declare

    set accountNumber = ReadString("Enter account number: ")
    set customerName = ReadString("Enter customer name: ")
    set purchase = ReadNumber("Enter price of purchase: ")
    set payment = purchase / 12
    
    output "Account number: " + accountNumber
    output "Customer name: " + customerName
    output "Total purchase: " + purchase
    output "Monthly payments:"
    
    for index = 1 to 12 step 1
        output "Month " + index + ": " + payment
    end for

    output "Program finished."
Stop

ReadString(string message)
    declare string text
    output message
    input text
return text

ReadNumber(string message)
    declare num number
    output message
    input number
return number
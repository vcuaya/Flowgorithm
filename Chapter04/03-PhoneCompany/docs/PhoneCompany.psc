/*
Problemática:
    Dash Cell Phone Company cobra a sus clientes una tarifa básica de $5
    por mes al enviar un mensaje de texto.
    
    Las tarifas adicionales son las siguientes:
        - Los primeros 60 mensajes por mes, sin importar la longitud del
        mensaje, se incluyen en la factura básica.
        - Se cobran cinco centavos adicionales por cada mensaje de texto
        después del 60o. mensaje, hasta 180 mensajes.
        - Se cobran 10 centavos adicionales por cada mensaje de texto
        después del 180o. mensaje.
        - Los impuestos federales, estatales y locales suman un total de
        12% de cada factura.

    Considere lo siguiente:
    a) Un programa que acepte los siguientes datos sobre la factura de un
    cliente: código de área donde se encuentra (trés dígitos), número de
    teléfono (10 dígitos) y número de mensajes de texto enviados.
    Despliegue todos los datos, incluyendo la factura mensual final tanto
    antes como después de agregar los impuestos.

    b) Un programa que acepte en forma continua datos sobre los mensajes
    de texto hasta que se introduzca un valor centinela.

    c) Un programa que acepte en forma continua datos sobre mensajes de
    texto hasta que se introduzca un valor centinela y solo despliegue
    detalles sobre clientes que envíen más de 100 mensajes de texto.

    d) Un programa que acepte en forma continua datos sobre mensajes de
    texto hasta que se introduzca un valor centinela y sólo despliegue
    detalles sobre clientes cuya factura total con impuestos sea mayor de
    $20.

Objetivos:
    Leer datos del cliente.
    Mostrar factura del cliente.

Entradas:
    Código de área a trés dígitos.
    Número telefónico a 10 dígitos.
    Número de mensajes de texto enviados.

Salidas:
    Los datos de facturación y el saldo a pagar.

Fórmulas:
    Impuestos = 12%.
    Tarifa Básica = $5.
    Tarifa adicional A (61 a 180 mensajes) = mensajes adicionales * 5 centavos.
    Tarifa adicional B (181 o más mensajes) = mensajes adicionales * 10 centavos.
    Total = (Básica + AdicionalA + AdicionalB) * (1.12)
*/

Main
    declare
        const num TAXES = 0.12
        const num BASIC_RATE = 5
        const num RATE_A = 0.05
        const num RATE_B = 0.10
        const string SENTINEL = "000"
        string areaCode
        string phoneNumber
        num numberOfMessages
        num totalAmount
    end declare

    set areaCode = ReadString("Enter the area code (3 digits or 000 to finish): ")
    
    while areaCode != SENTINEL do
        set phoneNumber = ReadString("Enter the phone number (10 digits): ")
        set numberOfMessages = ReadNumber("Enter the number of messages: ")
        set totalAmount = CalculateTotal(numberOfMessages)
        if totalAmount > 20 then
            call DisplayInvoice(areaCode, phoneNumber, numberOfMessages, totalAmount)
        end if
        set areaCode = ReadString("Enter the area code (3 digits or 000 to finish): ")
    end while

    output "Program finished."
Stop

ReadString(string message)
    declare string stringInput
    output message
    input stringInput
return stringInput

ReadNumber(string message)
    declare num number
    output message
    input number
return number

CalculateTotal(num numberOfMessages)
    declare num total
    total = BASIC_RATE
    if 60 < numberOfMessages and numberOfMessages <= 180 then
        total = total + (numberOfMessages - 60) * RATE_A
    else if 180 < numberOfMessages then
        total = total + (numberOfMessages - 180) * RATE_B
    end if
    total = total * (1 + TAXES)
return total

DisplayInvoice(string areaCode, string phoneNumber, num numberOfMessages, num totalAmount)
    output "Area code: " + areaCode
    output "Phone number: " + phoneNumber
    output "Number of messages: " + numberOfMessages
    output "Total amount: " + totalAmount
return
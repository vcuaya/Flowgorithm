/*
Objectives:
    Calculate the service charge for a cleaning service based on the number of rooms cleaned.

The program should:
    1. Ask the user for the customer's name.
    2. Ask the user for the number of bathrooms and rooms cleaned.
    3. Calculate the service charge based on the following:
        a) $40 service charge
        b) $15 for each bathroom cleaned
        c) $10 for each room cleaned
    4. Display the customer's name and the service charge.
    5. Repeat the process while the user does not enter "ZZZZ" as the customer's name.

Inputs:
    Customer's name
    Number of bathrooms cleaned
    Number of rooms cleaned

Outputs:
    Customer's name
    Service charge

Formulas:
    Service charge = $40 + ($15 * number of bathrooms cleaned) + ($10 * number of rooms cleaned)
*/

Main
    declare
        const string CENTINEL_VALUE = "ZZZZ"
        string customerName
        num bathroomsCleaned
        num roomsCleaned
        num serviceCharge
    end declare

    set customerName = ReadString("Enter the customer's name or ZZZZ to stop: ")

    While customerName is not CENTINEL_VALUE then
        set bathroomsCleaned = ReadNumber("Enter the number of bathrooms cleaned: ")
        set roomsCleaned = ReadNumber("Enter the number of rooms cleaned: ")
        set serviceCharge = CalculateCharge(bathroomsCleaned, roomsCleaned)

        output "Customer's name: " + customerName + " Service charge: $" + serviceCharge

        set customerName = ReadString("Enter the customer's name or ZZZZ to stop: ")
    End While

    output "Program finished."
Stop

ReadString(string message)
    declare string stringInput
    output message
    input stringInput
return stringInput

ReadNumber(string message)
    declare num numInput
    output message
    input numInput
return numInput

CalculateCharge(num bathrooms, num rooms)
    declare num charge
    set charge = 40 + (15 * bathrooms) + (10 * rooms)
return charge
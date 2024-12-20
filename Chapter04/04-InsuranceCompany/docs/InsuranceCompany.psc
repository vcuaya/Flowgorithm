/*
Problema:
    Drive-Rite Insurance Company proporciona pólizas de seguros para
    automóviles a los conductores. Diseñe:

    a) Un programa que acepte datos de pólizas de seguros, incluyendo el
    número de las mismas, apellido del cliente, nombre del cliente, edad,
    fecha de vencimiento de la prima (día, mes y año) y número de accidentes
    que ha tenido el conductor en los últimos tres años. Si un número de
    póliza introducido no está entre 1,000 y 9,999 inclusive, establezca el
    número de póliza en 0. Si el mes no está entre 1 y 12 inclusive, o el día
    no es correcto para el mes (por ejemplo, no está entre 1 y 31 para enero
    o 1 y 29 para febrero), establezca el día, mes y año en 0. Despliegue los
    datos de la póliza después que se hayan hecho cualesquiera revisiones.

    b) Un programa que acepte en forma continua los datos de los tenedores de
    pólizas hasta que se introduzca un valor centinela y despliegue los datos
    para cualquier tenedor de póliza mayor de 35 años de edad.

    c) Un programa que acepte datos de los tenedores de pólizas y despliegue
    los datos para cualquier tenedor de póliza que sea menor de 21 años de
    edad.

    d) Un programa que acepte datos de los tenedores de pólizas y despliegue
    los datos para cualquier tenedor de póliza no mayor de 30 años de edad.

    e) Un programa que acepte datos de los tenedores de pólizas y despliegue
    los datos para cualquier tenedor de póliza cuya prima venza a más tardar
    el 15 de marzo de cualquier año.

    f) Un programa que acepte datos de los tenedores de pólizas y despliegue
    los datos para cualquier tenedor de póliza cuya prima venza hasta el 1 de
    enero de 2014.

    g) Un programa que acepte datos de los tenedores de pólizas y despliegue
    los datos para cualquier tenedor de póliza cuya prima se venza el 27 de
    abril de 2013.

    h) Un programa que acepte datos de los tenedores de pólizas y despliegue
    los datos para cualquiera que tenga un número de póliza entre 1,000 y
    4,000 inclusive, cuya póliza se venza en abril o mayo de cualquier año, y
    que haya tenido menos de tres accidentes.

Objetivos:
    Crear un programa que acepte datos de pólizas de seguros.

Entradas:
    Número de póliza
    Apellidos
    Nombre
    Edad
    Fecha de vencimiento de la prima
    Accidentes

Salidas:
    Datos de la póliza

Fórmulas:
    No aplica
*/

Main
    declare
        num policyNumber
        string lastName
        string firstName
        num age
        num day
        num month
        num year
        num accidents
        const num SENTINEL = 0
    end declare

    set policyNumber = ReadNumber("Enter the policy number or type " + SENTINEL + " to finish: ")
    
    while policyNumber != SENTINEL do
        set lastName = ReadString("Enter the last name: ")
        set firstName = ReadString("Enter the first name: ")
        set age = ReadNumber("Enter the age: ")
        set day = ReadNumber("Enter the day: ")
        set month = ReadNumber("Enter the month: ")
        set year = ReadNumber("Enter the year: ")
        set accidents = ReadNumber("Enter the number of accidents: ")
        
        if policyNumber < 1000 or policyNumber > 9999 then
            set policyNumber = 0
        end if
        if month < 1 or month > 12 then
            set month = 0
        end if
        if month == 1 or month == 3 or month == 5 or month == 7 or month == 8 or month == 10 or month == 12 then
            if day < 1 or day > 31 then
                set day = 0
            end if
        else if month == 4 or month == 6 or month == 9 or month == 11 then
            if day < 1 or day > 30 then
                set day = 0
            end if
        else if month == 2 then
            if day < 1 or day > 29 then
                set day = 0
            end if
        end if

        if (policyNumber >= 1,000 and policyNumber <= 4,000) and (month == 4 or month == 5) and accidents < 3 then
            call DisplayPolicy(policyNumber, lastName, firstName, age, day, month, year, accidents)
        end if
    
        set policyNumber = ReadNumber("Enter the policy number or type " + SENTINEL + " to finish: ")
    end while

    output "Program finished."
Stop

ReadNumber(string message)
    declare num number
    output message
    input number
return number

ReadString(string message)
    declare string text
    output message
    input text
return text

DisplayPolicy(num policyNumber, string lastName, string firstName, num age, num day, num month, num year, num accidents)
    output "Policy number: " + policyNumber
    output "Last name: " + lastName
    output "First name: " + firstName
    output "Age: " + age
    output "Day: " + day
    output "Month: " + month
    output "Year: " + year
    output "Accidents: " + accidents
return
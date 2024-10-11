/*
Problema:
    Black Dot Printing intenta organizar un trasporte compartido para ahorrar
    energía. Cada registro de entrada contiene el nombre y el poblado de
    residencia de un empleado. Diez por ciento de los empleados de la compañía
    vive en Wonder Lake, 30% vive en el poblado adyacente de Woodstock. Black
    Dot desea alentar a los empleados que viven en cualquier poblado para
    viajar juntos al trabajo. Diseñe un diagrama de flujo o pseudocódigo para
    lo siguiente:

    a) Un programa que acepte los datos de un empleado y lo despliegue con un
    mensaje que indique si es un candidato para compartir el vehículo.

    b) Un programa que acepte en forma continua los datos de los empleados
    hasta que se introduzca un valor centinela y despliegue una lista de todos
    los empleados que son candidatos para compartir el vehículo.

Objetivos:
    Desplegar e indicar si un candidato es apto para compartir el vehículo.

Entradas:
    Nombre del empleado
    Poblado de residencia

Salidas:
    Mensaje que indica si el candidato es apto para compartir el vehículo.

Fórmulas:
    No aplica
*/

Main
    declare
        string name
        string city
        const string SENTINEL = "exit"
    end declare

    set name = ReadString("Enter the name of the employee or " + SENTINEL + " to finish: ")

    while name != SENTINEL do
        set city = ReadString("Enter the city where the employee lives: ")

        if city = "Woodstock" or city = "Wonder Lake" then
            output "The employee [" + name + "] is eligible to share the vehicle."
        else
            output "The employee [" + name + "] is not eligible to share the vehicle."
        end if

        set name = ReadString("Enter the name of the employee or " + SENTINEL + " to finish: ")
    end while

    output "Program finished."
Stop

ReadString(string message)
    declare string text
    output message
    input text
return text
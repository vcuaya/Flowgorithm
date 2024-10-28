/*
    Problema:
        El señor Roper es propietario de 20 edificios de departamentos.
        Cada edificio contiente 15 unidades que renta por $800 por mes cada
        uno. Diseñe la aplicación que daría salida a 12 talonarios de pago
        para cada uno de los 15 departamentos en cada uno de los 20
        edificios. Cada talonario debe contener el número de edificio, el
        número de departamento, el mes y la cantidad de renta que se debe.

    Ojetivos:
        Desplegar los datos de cada talonario de pago.

    Entradas:
        Ninguna.

    Salidas:
        Los datos de cada talonario de pago.

    Fórmulas:
        No aplica
*/

Main
    declare
        const num BUILDINGS = 20
        const num DEPARTMENTS_PER_BUILDING = 15
        const num RENT_PER_MONTH = 800
        const num MONTHS = 12
    end declare

    for building = 1 to BUILDINGS step 1
        for department = 1 to DEPARTMENTS_PER_BUILDING step 1
            for month = 1 to MONTHS step 1
                output "Building: " + building + " Department: " + department + " Month: " + month + " Rent: " + RENT_PER_MONTH
            end for
        end for
    end for
Stop
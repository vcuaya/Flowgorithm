/*
    Problema:
        Ellison Private Elementary School tiene tres salones de clases en
        cada uno de los nueve grados, jardín de niños (grado 0) hasta el
        grado 8, y permite a los padres pagar la colegiatura a lo largo del
        año escolar de nueve meses. Diseñe la aplicación que de salida al
        pago de nueve talonarios de colegiatura para cada uno de los 27
        salones de clases. Cada talonario debe contener el número de grado,
        el número de salón de clases, el mes y la colegiatura a pagar. La
        colegiatura para el jardín de niños es de $80 por mes. La
        colegiatura para los otros grados es de $60 por mes por el nivel de
        grado.

    Objetivos:
        Mostrar el talonario de pago mensual de cada salón de clases.

    Entradas:
        Ninguna.

    Salidas:
        Los datos de cada talonario de pago.
        
    Fórmulas:
        No aplica
*/

Main
    declare
        const num CLASSROOMS_PER_GRADE = 3
        const num GRADES = 9
        const num MONTHS = 9
        const num TUITION_FEE_KINDERGARTEN = 80
        const num TUITION_FEE_OTHERS = 60

        num classroom
        num grade
        num month
    end declare

    for grade = 0 to GRADES - 1 step 1
        for classroom = 1 to CLASSROOMS_PER_GRADE step 1
            for month = 1 to MONTHS step 1
                if grade = 0 then
                    output "Grade: " + grade + " Classroom: " + classroom + " Month: " + month + " Tuition: " + TUITION_FEE_KINDERGARTEN
                else
                    output "Grade: " + grade + " Classroom: " + classroom + " Month: " + month + " Tuition: " + TUITION_FEE_OTHERS
                end if
            end for
        end for
    end for

    output "Program finished."
Stop
/*
Objectives:
    1. Create a program that calculates the Body Mass Index (BMI) of a person.

The program should:
    1. Ask the user to enter the weight in pounds and height in inches.
    2. Convert the weight from pounds to kilograms.
    3. Convert the height from inches to meters.
    4. Calculate the BMI
    5. Display the BMI value.

Inputs:
    1. Weight in pounds
    2. Height in inches

Outputs:
    1. BMI value

Formulas:
    1. weightKg = weight * 0.453592
    2. heightM = height * 0.0254
    3. bmi = weightKg / (heightM * heightM)
*/

Main
    declare
        num weight
        num height
        num weightKg
        num heightM
        num bmi
    end declare

    set weight = ReadNumber("Enter the weight in pounds: ")
    set height = ReadNumber("Enter the height in inches: ")

    set weightKg = weight * 0.453592
    set heightM = height * 0.0254
    set bmi = CalculateBMI(weightKg, heightM)

    output "The BMI value is: " + bmi
    output "Program finished."
Stop

ReadNumber(string message)
    declare num number
    output message
    input number
return number

CalculateBMI(num weightKg, num heightM)
    declare num bmi
    set bmi = weightKg / (heightM * heightM)
return bmi
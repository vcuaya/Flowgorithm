# Flowgorithm

Este repositorio contiene una colección de ejercicios de programación realizados con la herramienta [Flowgorithm](http://flowgorithm.org/). Flowgorithm es un entorno de desarrollo visual que permite crear diagramas de flujo y convertirlos en código ejecutable. Los ejercicios aquí presentes están diseñados para ayudar a los estudiantes a comprender los conceptos básicos de la programación y la lógica computacional.

## Estructura del Repositorio

El repositorio está organizado en carpetas que corresponden a diferentes capítulos y ejercicios basados en el libro *[Introducción a la Lógica de Programación y Diseño](https://latam.cengage.com/libros/introduccion-a-la-programacion-logica-y-diseno/)* de Joyce Farrel.

Cada ejercicio contiene los siguientes archivos:

- **Diagrama de jerarquía**: Se encuentra en formato `.png` dentro de la carpeta `docs/`.
- **Pseudocódigo**: Se encuentra en formato `.psc` dentro de la carpeta `docs/`.
- **Diagrama de flujo**: Se encuentra en formato `.fprg` dentro de la carpeta `docs/`.

### Ejemplo de Estructura de un Ejercicio

```
Chapter<XX>
    ProjectName
        docs
            <ProjectName>.fprg
            <ProjectName>.png
            <ProjectName>.psc
        <ProjectName>.csproj
        Program.cs
```

## Requisitos

Para visualizar los diagramas de flujo necesitas tener instalado [Flowgorithm](http://flowgorithm.org/).

Para ejecutar las aplicaciones de consola, necesitas tener instalado [.NET](https://dotnet.microsoft.com/download).

## Instrucciones

1. **Visualizar Diagramas y Pseudocódigo**:
    - Abre los archivos `.fprg` con Flowgorithm para visualizar el diagrama de flujo.
    - Abre los archivos `.psc` con cualquier editor de texto plano como Visual Studio Code.
    - Los archivos `.png` pueden ser abiertos con cualquier visor de imágenes para ver el diagrama de jerarquía.

2. **Ejecutar la Aplicación de Consola**:
    - Navega a la carpeta del ejercicio en la terminal.
    - Ejecuta el siguiente comando para compilar y ejecutar el programa:
      ```sh
      dotnet run
      ```

# Flowgorithm

This repository contains a collection of programming exercises created using the [Flowgorithm](http://flowgorithm.org/) tool. Flowgorithm is a visual development environment that allows you to create flowcharts and convert them into executable code. The exercises presented here are designed to help students understand the basic concepts of programming and computational logic.

## Repository Structure

The repository is organized into folders that correspond to different chapters and exercises based on the book *[Introduction to Programming Logic and Design](https://latam.cengage.com/libros/introduccion-a-la-programacion-logica-y-diseno/)* by Joyce Farrel.

Each exercise contains the following files:
- **Hierarchy Chart**: Located in `.png` format inside the `docs/` folder.
- **Pseudocode**: Found in `.psc` format within the `docs/` folder.
- **Flowchart**: Available in `.fprg` format inside the `docs/` folder.

### Example Structure of an Exercise

```
Chapter<XX>
    ProjectName
        docs
            <ProjectName>.fprg
            <ProjectName>.png
            <ProjectName>.psc
        <ProjectName>.csproj
        Program.cs
```

## Requirements

To view the flowcharts you need to have [Flowgorithm](http://flowgorithm.org/) installed.

To run the console applications, you need to have [.NET](https://dotnet.microsoft.com/download) installed.

## Instructions

1. **View Flowcharts and Pseudocode**:
    - Open `.fprg` files with Flowgorithm to view the flowchart.
    - Open `.psc` files with any plain text editor, such as Visual Studio Code.
    - `.png` files can be opened with any image viewer to see the hierarchy chart.

2. **Run the Console Application**:
    - Navigate to the exercise folder in the terminal.
    - Run the following command to compile and execute the program:
      ```sh
      dotnet run
      ```

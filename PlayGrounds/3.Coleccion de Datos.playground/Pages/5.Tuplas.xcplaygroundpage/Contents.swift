import UIKit

// TUPLAS: No son del tipo Coleccion, pero se comporta como una, ya que almacena una coleccion de datos de diferentes tipos de datos.

            //Nombre, Apellido, Edad , Estatura
var persona = ("Josue", "Coronel", 30, 1.75)

//Elegir la posicion de la tupla que mostrar
persona.2
persona.3
persona.0

// Asignandole el valor segun la posicion de la variable
var (Nombre, Apellido, Edad , Estatura) = persona
Nombre //Josue
Estatura //1.75

//Tuplas Asignadas a Variables
var personaNamedTuples = (nombre: "Josue", apellido: "Coronel", edad:24, estatura: 1.75)
print(personaNamedTuples)
personaNamedTuples.nombre
personaNamedTuples.apellido
personaNamedTuples.estatura

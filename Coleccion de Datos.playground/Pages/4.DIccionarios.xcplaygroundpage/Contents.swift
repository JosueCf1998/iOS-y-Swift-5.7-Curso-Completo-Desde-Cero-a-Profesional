import UIKit

// Sintaxis Diccionarios
let myClassicDictionary = Dictionary<Int, String>() //Forma Clasica
var myModernDictionary = [Int:String]() //Forma Moderna

//Añadir Datos
myModernDictionary = [001: "Josue", 002: "Pepe"]
print(myModernDictionary)

//Añadir un Solo Dato
myModernDictionary[003] = "Luis"
print(myModernDictionary)

//Añadir Datos ya creados
//myModernDictionary = [004: "Maria", 005: "Ana"] //Error, se escribiran encima borrando los anteriores.

myModernDictionary[004] = "Maria"
myModernDictionary[005] = "Ana"
print(myModernDictionary)

//Acceder a un Dato
myModernDictionary[002]
print(myModernDictionary)

//La Clave del Diccionario es Unica
//myModernDictionary.updateValue("Josue Coronel", forKey: 002) //Forma Antigua
myModernDictionary[002] = "Josue Coronel"
myModernDictionary[002]
print(myModernDictionary)

//Borrar Datos
//myModernDictionary.removeValue(forKey: 002) // Forma Antigua
myModernDictionary[002] = nil
myModernDictionary[002]
print(myModernDictionary)




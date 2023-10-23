import UIKit

//Array Mutable   Pos 0 1 2
var arregloNumeros = [1,2,3]
//Array Inmutable
let arregloNumerosInmutables = [3,2,1]

// print(...) : Representacion Textual de las variables que se tienen
print(4)
print("Hola Mundo")
print(arregloNumeros)

//Agregar Valores del Array
arregloNumeros.append(5) //Agregar un valor al final del arreglo
print(arregloNumeros)
arregloNumeros.insert(4, at: 3) //Insertar un valor por Posicion del arreglo
print(arregloNumeros)

//Eliminar Valores del Array
arregloNumeros.removeLast() //Elimina el ultimo valor del Arreglo
print(arregloNumeros)
arregloNumeros.remove(at: 2) //Elimina el valore por Posicion
print(arregloNumeros)

arregloNumeros.removeAll()
print(arregloNumeros)

// Arreglo segun el Tipo de Dato
var arregloVacio: [String] = []
arregloVacio.append("Hola")
arregloVacio.insert("Mundo", at: 1)
print(arregloVacio)



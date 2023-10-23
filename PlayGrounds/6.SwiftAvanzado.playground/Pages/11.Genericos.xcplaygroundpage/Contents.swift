import Foundation

/*

 GENERICO GENERICS
 Nos permite escribir funciones y tipos flexibles que son
 reutilizables y van a funcionar con diferentes tipos que
 se adpaten a unos requisitos. De esta manera vamos a
 poder abstraer nuestro codigo y evitar la duplicacion
 de operaciones.
 
*/

//Generics

//inout = designa los parametros que van a entrar y salir,
//sin necesidad de retornarlos

// Sin Genericos
func swapTwoInts(a: inout Int, b: inout Int) {
    let tempA = a
    a = b
    b = tempA
}

var myFirstInt = 5
var mySecondInt = 10
print("el primer valor es \(myFirstInt) y el segundo valor es \(mySecondInt)")
swapTwoInts(a: &myFirstInt , b: &mySecondInt)

print("el primer valor es \(myFirstInt) y el segundo valor es \(mySecondInt)")

// Con Genericos
func swapTwoGenerics<T>(a: inout T, b: inout T) {
    let tempA = a
    a = b
    b = tempA
}

var myFirstGeneric = 5
var mySecondGeneric = 10
print("el primer valor es \(myFirstGeneric) y el segundo valor es \(mySecondGeneric)")
swapTwoGenerics(a: &myFirstGeneric , b: &mySecondGeneric)

print("el primer valor es \(myFirstGeneric) y el segundo valor es \(mySecondGeneric)")

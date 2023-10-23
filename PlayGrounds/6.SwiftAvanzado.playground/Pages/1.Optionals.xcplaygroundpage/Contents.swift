import Foundation

/*
 
 TIPOS OPCIONALES
 Nos sirve para representar datos que pueden tener un valor
 o no, se representa con el simbolo "?"
 
 var miNumero: String? --> Puede tener un valor o es nulo ("nil")
 
*/

// Opcionales
let myStringNumber = "100"
let myIntNumber = Int(myStringNumber)

let myWrongStringNumber = "Josue"
let myWrongIntNumber:Int? = Int(myWrongStringNumber)

var myOptionalString: String?
//print(myOptionalString)

myOptionalString = "Bienvenido al curso de Swift Avanzado"

if myOptionalString != nil {
    print("Nuestra variable tiene un valor distinto de nulo")
}else {
    print("Nuestra variable es nula")
}

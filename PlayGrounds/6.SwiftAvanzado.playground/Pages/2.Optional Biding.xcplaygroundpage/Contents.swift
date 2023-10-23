import Foundation

//Enlaces Opcionales o Optional Biding

var myOptionalString: String?
var myOptionalString2: String?
var myOptionalString3: String?
myOptionalString = "Josue"
myOptionalString2 = "Coronel"
myOptionalString3 = "Flores"

//Encadenamiento de Enlaces Opcionales
if let myString = myOptionalString, let myString2 = myOptionalString2, let myString3 = myOptionalString3 {
    print("\(myString) \(myString2) \(myString3)")
}else {
    print("Alguna variable es Nula")
}

//Desempaquetado Forzado
print(myOptionalString!)

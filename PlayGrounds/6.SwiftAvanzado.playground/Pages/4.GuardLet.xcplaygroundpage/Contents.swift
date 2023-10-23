import Foundation

//Salida Rapida o Guard Let
var myOptionalString: String?

func myFunction() {
    guard let myString = myOptionalString else {
        print("myString es Nulo")
        return
    }
    print("El valor de myString es \(myString)")
}

myFunction()
myOptionalString = "Bienvenidos"
myFunction()

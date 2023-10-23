import UIKit

struct cuadrados {
    //Propiedades
    var ancho = 10
    var alto = 10
    
    //Metodos
    func area() -> Int{
        return ancho * alto
    }
}

var miCuadrado = cuadrados()
var areaCuadrado = miCuadrado.ancho * miCuadrado.alto
var areaCuadrado2 = miCuadrado.area()



import UIKit

//Diferencia entre estructura y Clase

////CLASE
class claseAutomovil {
    //PROPIEDADES
    var color = "neutro"
    var numeroLlantas = 4
    var precio = 0
    
    //METODOS
    func encender() -> Bool{
        return true
    }
    func apagar() -> Bool{
        return true
    }
    func acelerar() -> Bool{
        return true
    }
}

var miObjetoMazda = claseAutomovil()
miObjetoMazda.precio
miObjetoMazda.precio = 5000

print(miObjetoMazda.precio)

////ESTRUCTURA
struct estructuraAutomovil {
    var color = "neutro"
    var numeroLlantas = 4
    var precio = 0
    
    func encender() -> Bool{
        return true
    }
    
    func apagar() -> Bool{
        return true
    }
    func acelerar() -> Bool{
        return true
    }
}

var miEstructuraMazda = estructuraAutomovil()
miEstructuraMazda.precio
miEstructuraMazda.precio = 5000

print(miEstructuraMazda.precio)

//DIFERENCIAS AL CREAR UNA SEGUNDA CLASE Y ESTRUCTURA

var miSegundoObjetoMazda = miObjetoMazda
var miSegundaEstructuraMazda = miEstructuraMazda

miSegundoObjetoMazda.precio = 6000
miSegundaEstructuraMazda.precio = 8100

print(miSegundoObjetoMazda.precio)
print(miSegundaEstructuraMazda.precio)

print(miObjetoMazda.precio)
print(miEstructuraMazda.precio)

//Con esto notamos que en miObjetoMazda con el Segundo, si hubo alteraciones
//porque su primer valor era 5000
//En cambio en miEstructuraMazda, se mantuvo el valor porque al crear otra instacia solo lo llamo por referencia y no altero su origen

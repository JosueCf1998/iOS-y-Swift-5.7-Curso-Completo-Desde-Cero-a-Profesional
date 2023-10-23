import Foundation

/*
//Extensiones
 Nos ayuda para agregar una nueva funcionalidad a una clase,
 a una estructura, a una enumeracion o a un protocolo existente.
 Añade caracteristicas al nivel de tipo de dato
 
*/

// NOS AYUDA A TRANSFORMAR DE METROS A KILOMETROS PERO NOS LIMITA
let myMeters1: Double = 5000

func metersToKm(meters: Double)-> Double{
    return meters / 1000
}

print(metersToKm(meters: myMeters1))

// En este caso, la extension nos ayuda a indicar una funcion de tipo
let myMeters:Double = 5000

extension Double {
    var km: Double{
        return self / 1000
    }
    var m: Double{
        return self
    }
    var cm: Double{
        return self * 100
    }
}

print(myMeters.km)

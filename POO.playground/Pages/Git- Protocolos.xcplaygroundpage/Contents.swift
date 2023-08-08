import Foundation

// Un protocolo Hablador define la lista
// de funciones que tiene que implementar una clase para
// ser un "Hablador", en el caso de este ejemplo, simplemente
// una función que se llame "hablar".
protocol Hablador {
    func hablar() -> String
}

// Declarar que una clase implementa un protocolo
// es igual que declarar una herencia
class Persona: Hablador {
    // Debemos cumplir con lo que especifica el protocolo.
    func hablar() -> String {
        return "Hola!"
    }
}

class Perro: Hablador {
    func hablar() -> String {
        return "Guau!"
    }
}

func imprimirSonido(de hablador: Hablador) {
    print(hablador.hablar())
}

let persona = Persona()
let perro = Perro()

imprimirSonido(de: persona) // Hola!
imprimirSonido(de: perro) // Guau!

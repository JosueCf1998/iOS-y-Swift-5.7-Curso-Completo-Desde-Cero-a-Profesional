import Foundation

class Persona {
    private let nombre: String
    let apellido: String

    init(nombre: String, apellido: String) {
        self.nombre = nombre
        self.apellido = apellido
    }
}

let juan = Persona(nombre: "Juan", apellido: "Gomez")

print(juan.apellido) // Imprimirá "Gomez". Es internal.
print(juan.nombre) // ERROR! nombre es private.

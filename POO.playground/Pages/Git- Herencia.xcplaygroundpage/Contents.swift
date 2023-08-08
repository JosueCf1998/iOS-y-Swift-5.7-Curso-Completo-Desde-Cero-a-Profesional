import Foundation

// La clase Persona que explicamos anteriormente
class Persona {
    let nombre: String
    let apellido: String

    init(nombre: String, apellido: String) {
        self.nombre = nombre
        self.apellido = apellido
    }

    func obtenerNombreCompleto() -> String {
        return "\(nombre) \(apellido)"
    }
}

// La clase Estudiante, "hija" de Persona
// La herencia se declara con los dos puntos.
class Estudiante: Persona {
    // Estudiante tiene un legajo en adición con los
    // atributos que hereda de Persona.
    let legajo: String

    // Un constructor al igual que en la clase Persona.
    init(nombre: String, apellido: String, legajo: String) {
        self.legajo = legajo

        // Tenemos acceso a los métodos de la clase padre
        // por medio de la palabra clave "super"
        super.init(nombre: nombre, apellido: apellido)
    }

    func obtenerDescripcion() -> String {
        return "Nombre: \(obtenerNombreCompleto()) ; Legajo: \(legajo)"
    }
}

import Foundation

// Definimos algunas clases (esto se llama jerarquía de clases)

class Persona {
    let nombre: String
    init(nombre: String) { self.nombre = nombre }
    func describir() -> String {
        return "\(nombre)"
    }
}

class Estudiante: Persona {
    let legajo: String
    init(nombre: String, legajo: String) {
        self.legajo = legajo
        super.init(nombre: nombre)
    }
    // La palabra clave "override"
    // indica que estamos "sobreescribiendo" este método.
    // Lo que significa que vamos a redefinir la
    // funcionalidad que le habíamos dado en
    // la clase padre.
    override func describir() -> String {
        return "\(super.describir()) ; legajo: \(legajo)"
    }
}

class Empleado: Persona {
    let salario: Double
    init(nombre: String, salario: Double) {
        self.salario = salario
        super.init(nombre: nombre)
    }
    override func describir() -> String {
        return "\(super.describir()) ; salario: \(salario)"
    }
}

// A la función "presentar" podemos enviarle cualquier
// tipo de Persona, ya sea un objeto de tipo Persona,
// o un objeto de tipo Estudiante, o un objeto de tipo
// Empleado.
func presentar(a persona: Persona) {
    print("Les presento a \(persona.describir())")
}

let marcelo = Persona(nombre: "Marcelo")
presentar(a: marcelo) // Les presento a Marcelo

let juan = Estudiante(nombre: "Juan", legajo: "123")
presentar(a: juan) // Les presento a Juan ; Legajo: 123
// En este último caso hemos aplicado polimorfismo.
// El comportamiento cambia a partir de la herencia.


let erika = Empleado(nombre: "Erika", salario: 1500.0)
presentar(a: erika) // Les presento a Erika ; salario: 1500.0

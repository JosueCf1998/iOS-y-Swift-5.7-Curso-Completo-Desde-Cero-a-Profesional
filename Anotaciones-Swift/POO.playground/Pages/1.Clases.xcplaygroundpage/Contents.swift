import Foundation

// La palabra clave class define una clase
// Noten que escribimos el nombre en mayúscula
class Persona {
    // Definimos los datos, también llamados
    // variables miembro o atributos,
    // simplemente declarándolos como cualquier variable
    // común y corriente.
    let nombre: String
    let apellido: String

    // con la palabra clave definimos un constructor.
    // Los constructores son funciones que se ejecutan
    // al "instanciar", es decir, crear, el objeto
    // a partir de una clase.
    init(nombre: String, apellido: String) {
        // self es la palabra clave que nos permite referirnos al objeto
        // en el que estamos operando en este momento.
        self.nombre = nombre
        self.apellido = apellido
    }

    // Los métodos se definen como una función cualquiera,
    // pero tienen acceso a cualquier atributo del mismo objeto.
    func obtenerNombreCompleto() -> String {
        // No es necesario el "self", solo es necesario
        // para distinguir el atributo de un parámetro de la función,
        // como en el caso del constructor que vimos recién.
        return "\(nombre) \(apellido)"
    }
}

let jorge = Persona(nombre: "Jorge", apellido: "Gomez")
// El punto "." nos permite acceder a los atributos
// o a los métodos de un objeto.
print("La persona se llama \(jorge.obtenerNombreCompleto())")

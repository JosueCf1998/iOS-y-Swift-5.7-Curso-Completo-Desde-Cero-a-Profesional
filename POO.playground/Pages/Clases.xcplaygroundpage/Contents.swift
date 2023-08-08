import UIKit
//CLASE
class automovil {
    //OBJETOS
    var color = "neutro"
    var numeroLlantas = 4
    var precio = 0
    
    func encender() -> Bool {
        return true
    }
    func apagar() -> Bool {
        return true
    }
    func acelerar() -> Bool {
        return true
    }
}

//ACCEDER A LA CLASE Y SUS OBJETOS
//el molde objeto, toma sus propiedades y metodos mas no altera sus valores de la clase, solo referencia
var miObjetoMazda = automovil()
var miObjetoHonda = automovil()
miObjetoMazda.precio
miObjetoMazda.precio = 5000
print(miObjetoMazda.precio)
print(miObjetoHonda.precio)


//EJEMPLOS PARA PRACTICAR
class Humano {
    var nombre:String
    var apellido: String
    
    init(nombre:String, apellido: String){
        self.nombre = nombre
        self.apellido = apellido
    }
    
    func Hablar(){
        print("Me llamo \(nombre) \(apellido)")
    }
    func Comer(){
        print("Me gusta comer")
    }
}

var josue = Humano(nombre: "Josue", apellido: "Coronel")
var martha = Humano(nombre: "Martha", apellido: "Perez")
josue.nombre = "Pepe"
josue.Hablar()
josue.Comer()
print(josue.nombre)
martha.nombre


import Foundation

/*
 PROTOCOLO
 nos sirve para definir un modelo de metodos y
 propiedades para que una clase, estructura o
 enumeracion se adapten a ellos
 Obliga a esta clase, estructura o numeracion a que
 adopte una serie de propiedades y funciones que va a
 tener que implementar
 
*/

protocol PersonProtocol {
    var name: String { get set }
    var age: Int { get set }
    
    func fullName()->String
}

struct Programmer: PersonProtocol {
    var name: String
    var age: Int
    var language: String
    
    func fullName() -> String {
        return "El nombre es \(name), edad: \(age) y su lenguaje favorito es \(language)"
    }
    
}

struct Teacher: PersonProtocol {
    var name: String
    var age: Int
    var subject: String
    
    func fullName() -> String {
        return "El nombre es \(name), edad: \(age) y imparte la asignatura de \(subject)"
    }
    
}


let myProgrammer = Programmer(name: "Josue", age: 25, language: "Swift")
myProgrammer.fullName()

let myTeacher = Teacher(name: "Brais", age: 32, subject: "Calculo I")
myTeacher.fullName()

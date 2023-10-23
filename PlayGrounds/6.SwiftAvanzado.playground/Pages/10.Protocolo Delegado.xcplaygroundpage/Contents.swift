import Foundation

/*
    PROTOCOLO DELEGADO
 Es el mecanismo que nos permite comunicar 2 clases
 en sentido inverso.
 
 Notificar de una forma asyncrona ya que los protocolos
 se generan de manera lineal
*/

class FirstClass: SecondClassProtocol {
    func callSecond() {
       let secondClass = SecondClass()
        secondClass.delegate = self
        secondClass.callFirst()
    }
    
    func call() {
        print("Estoy de vuelta")
    }
}

protocol SecondClassProtocol {
    func call()
}

class SecondClass {
    var delegate: SecondClassProtocol?
    func callFirst() {
       sleep(5)
        delegate?.call()
    }
}

let firstClass = FirstClass()
firstClass.callSecond()

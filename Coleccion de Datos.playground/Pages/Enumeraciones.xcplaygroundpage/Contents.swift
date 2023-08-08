import UIKit

//Sintaxis Enumeración
enum PersonalData{
    case name
    case surname
    case address
    case phone
    
    //case name, surname, address, phone --> Tambien lo podemos definir asi
}

var currentData: PersonalData
currentData = .name
var input = "Josue"

currentData = .phone
input = "123456789"

//Enumeraciones con valores Asociados
enum ComplexPersonalData {
    case name(String)
    case surname(String,String)
    case address(String, Int)
    case phone(Int)
}

var complexCurrentData: ComplexPersonalData = .name("Josue")
complexCurrentData = .address("Av. Central", 15)

//Enumeracion con el mismo tipo de Valor

enum RawPersonalData:String{
    case name = "Nombre"
    case surname = "Apellido"
    case address = "Direccion"
    case phone = "Numero de Telefono"
}
RawPersonalData.phone.rawValue

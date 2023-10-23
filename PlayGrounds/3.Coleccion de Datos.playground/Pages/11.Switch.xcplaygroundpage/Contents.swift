import UIKit

//Switch
let country = "PE"

//Sistaxis de la sentencia de Swith
switch country {
case "PE":
    print("El idioma es Español")
case "MX":
    print("El idioma es Español")
case "ES":
    print("El idioma es Español")
case "CO":
    print("El idioma es Español")
case "ARG":
    print("El idioma es Español")
case "EEUU":
    print("El idioma es Ingles")

default:
    print("No conocemos el idioma")
}


//Otro ejemplo
let age = 100

switch age {
case 0,1,2:
    print("Eres un bebé")
case 3...10:
    print("Eres un niño")
case 10..<16:
    print("Eres un adolecente")
case 16..<70:
    print("Eres un adulto")
case 70..<100:
    print("Eres un anciano")
default:
    print("😱")
}

//Switch con Enum
enum PersonalData {
    case name
    case surname
    case address
    case phone
}

let userData: PersonalData = .surname

switch userData {
case .name:
    print("Estamos editando el nombre")
case .surname:
    print("Estamos editando el sobre nombre")
case .address:
    print("Estamos editando el correo")
case .phone:
    print("Estamos editando el telefono")
}


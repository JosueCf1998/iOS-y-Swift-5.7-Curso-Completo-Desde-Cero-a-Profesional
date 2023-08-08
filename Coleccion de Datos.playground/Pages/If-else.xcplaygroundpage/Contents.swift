import UIKit

var edad = 18
var cantidadDinero = 1000
var sexoFemenino = true

if !((edad >= 18 || cantidadDinero > 250) && (sexoFemenino)){
    print("Acceso permitido por ser mayor de Edad o tienes Dinero suficiente")
} else {
    print("Acceso denegado por ser menor de Edad")
}

//Otro Ejemplo
if edad >= 18 {
    print("Si puedes entrar al bar ya eres mayor de edad")
    if cantidadDinero > 250{
        print("Y ademas tienes Dinero")
        if sexoFemenino {
            print("Eres el cliente ideal de este bar poco etico")
        }
    }
    
}else{
    print("Acceso denegado por ser menor de Edad")
}

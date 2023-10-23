import Foundation

//Concatenacion
// Operador para concatenar (+=)
var myString = "Bienvenidos" + " " + "al curso de Swift"
myString += "\n¿Os esta gustando la clase?"

let name =  "Josue Coronel"
let country = "Peru"
let myPersonalInfo = "Mi nombre es " + name + " y vivo en " + country

//Interpolación
let myPersonalInfoWithInterpolation = "Mi nombre es \(name) y vivo en \(country)"

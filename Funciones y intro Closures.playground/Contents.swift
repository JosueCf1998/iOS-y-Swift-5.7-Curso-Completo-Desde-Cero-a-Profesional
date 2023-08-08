import UIKit

/*
var numeroAletorio:Int
numeroAletorio = Int(arc4random_uniform(100))

print(numeroAletorio)
*/

func holaMundo(){
    print("holaMundo")
}
holaMundo()

func sumaDosNumerosCualquiera(){
    var numero =  2 + 2
    print(numero)
}
sumaDosNumerosCualquiera()


func cuadradoDe(numero:Int){
    var numeroCuadrado = numero * numero
    print(numeroCuadrado)
}
cuadradoDe(numero: 10)

func cuboDe(numero: Int) -> Int{
    let numeroCubo = numero * numero * numero
    print(numeroCubo)
    return numeroCubo
}
let resultado = cuboDe(numero: 10)

func saludarAlumno(nombre:String, mensaje:String =  "te damos la bienvenida al curso de IOS con Swift"){
    print("Hola \(nombre) \(mensaje)")
}
saludarAlumno(nombre: "Pedro")

func listaNombres() -> [String]{
    let arregloNombre = ["Jose", "Maria", "Pedro"]
    return arregloNombre
}
var nombres = listaNombres()
print(nombres)

//Nombre de Parametros Internos y Externos
// Interna -> func Suma(numero1: 13){} //numero1
// Externa -> func Suma(Nota numero1: 13){} //Nota
func calificacionPromedio(matematica materiaUno:Double, quimica materiaDos:Double, fisica materiaTres:Double) -> Double{
    return(materiaUno + materiaDos + materiaTres)/3
}
calificacionPromedio(matematica: 81, quimica: 45, fisica: 60)

/*
 //Closures
 
 {
 (parametros) -> tipo-valo-retorno in
 codigo
 }
*/

let miPrimerClosure = {
    (materiaUno:Double,materiaDos:Double, materiaTres:Double) -> Double in
        
    return(materiaUno + materiaDos + materiaTres)/3
}
miPrimerClosure(100,22,88)
print("Mi calificacion promedio fue de: \(miPrimerClosure(100,22,88))")


//COMENTARIOS

/*
 import = Sirve para importar librerias, una libreria es una coleccion de
 lineas de codigo que podemos usar para no reinventar la rueda
 */
import UIKit
/*
 Puedes acceder a conocer su tipo de variable manteniento presionado command o Alt
 y pasando el cursor, luego presionar en el "?" y nos dice que variable es.
*/
var str = "Hello, playground"

/*
 var = variable que permite ser modificado
 let = variable que no permite ser mutado o modificado
 */

//Mostrar en consola el valor de la variable
print(str)
//Entreros (Int: es un tipo de valor entero con signo (+/-))
var x = 10

//Flotantes (Double: es de doble precision y es del tipo flotante)
var y = 18.2

//Operadores Aritmeticos + - * /
var sumaEnteros = x + 2
var sumaFlotantes = y - 5.8
//var sumaMixta = x + y //ERROR solo se pueden sumar mismos tipos de variables

//Conversion de Variables
var sumaMixtaConveridaInt = x + Int(y)
var sumaMixtaConveridaDouble = Double(x) + y

//Implicitamente Xcode nos dice que valor es la variable sin asignarle
var a = 10
//Explicitamente podemos asignarle el tipo de variables con ":(TipoVariable)"
var b:Int = 1000000000000000000 //numero maximo que puede leer

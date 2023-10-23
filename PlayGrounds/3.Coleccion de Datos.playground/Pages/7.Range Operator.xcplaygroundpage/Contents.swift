import UIKit

var arregloEjemplo = [0,1,2,3,4,5,6,7,8,9 ]

//Operador Rango Doble Lado/ two-sided range operator
var subSetArreglo = arregloEjemplo[1...3] //mix...max
// [1, 2, 3]
var subSetArreglo1 = arregloEjemplo[1..<3] //mix..<max
// [1, 2]


//Operador Rango Lado Unico / one-sided range operator
var subSetArreglo2 = arregloEjemplo[...3] //Hasta el 3er array al final
// [0, 1, 2, 3]
var subSetArreglo3 = arregloEjemplo[1...] //Desde eñ 1er array al final
// [1, 2, 3, 4, 5, 6, 7, 8, 9]


//Rango Cerrado
var rangoCerrado = [1...5]
//1.2.3.4.5
rangoCerrado[0]
//Conversion a Array para obtener sus valores
var rango = Array(rangoCerrado[0])
// [1, 2, 3, 4, 5]
rango[0]
rango[3]
rango[4]

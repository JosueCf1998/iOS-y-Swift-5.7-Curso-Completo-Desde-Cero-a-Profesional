import Foundation

/*
 OPERADORES AVANZADOS
 Asociatividad >>> Precedencias
 1. PRECEDENCIA
    las operaciones en swift se trabaja de distinta precedencia,
    ya que considera por orden la division, multiplicacion,
    suma y resta
 
 2. ASOCIATIVIDAD
    asocia por medio de parentesis la ejecucion de los resultados
*/

let myInt: Int = 2 + 3 % 4 * 5
let myInt2: Int = (2 + ((3 % 4) * 5))
let myInt3: Int = (((2 + 3) % 4) * 5)

/*
 Mas operadores avanzados
 No son importantes pero es bueno conocerlos, son los siguientes:
 
 - Operadores bit a bit: Realizar operaciones con bits de tipo NOT, AND, OR, XOR
 - Operadores de Desplazamiento: Para desplazar bits
 - Operadores de Desbordamiento: Para manejar errores en valores por encima de su limite.
 - Operadores Custom: Para definir nosotros mismos operadores
 
*/

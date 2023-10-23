import Foundation

// OTRAS OPERACIONES CON COLECCIONES

var myArray = [5,8,1,0,3,9,7,2,4,6]

var myDictionary = [5: "Cinco",
                    8: "Ocho",
                    1: "Uno",
                    0: "Cero",
                    3: "Tres",
                    9: "Nueve",
                    7: "Siete",
                    2: "Dos",
                    4: "Cuatro",
                    6: "Seis",
]

var mySet: Set = [5,8,1,0,3,9,7,2,4,6]


//  - Count
print(myArray.count)
print(myDictionary.count)
print(mySet.count)

//  - isEmpty
var myArray2: [Int] = []
print(myArray.isEmpty)
print(myDictionary.isEmpty)
print(mySet.isEmpty)
print(myArray2.isEmpty)

//  - Reversed
print(myArray.reversed() as [Int])
print(myDictionary.reversed())
print(mySet.reversed())

//  - First: Muestra el Primer Valor de la Coleccion
print(myArray.first)
print(myDictionary.first)
print(mySet.first)

//  - Last: Muestra el Ultimo Valor de la Coleccion
print(myArray.last) //Solo Existe en Arrays

//  - Drop: Elimina valores del array
print(myArray)
print(myArray.dropFirst()) //Elimina el primer valor
print(myArray.dropLast()) //Elimina el utlimo valor

//  - Pop: Muestra el valor
print(myArray)
print(myArray.popLast()) //Muestra el utlimo valor

print(mySet)
print(mySet.popFirst()) //Muestra el primer valor

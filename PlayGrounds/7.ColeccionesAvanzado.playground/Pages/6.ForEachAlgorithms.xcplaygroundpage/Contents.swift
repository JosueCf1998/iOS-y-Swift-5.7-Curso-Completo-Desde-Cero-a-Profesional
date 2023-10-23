import Foundation

/*
    ALGORITMO FOR EACH
 Se usa cuando se tiene colecciones, utilizando el ForEach para
 recorrerlos como el bucle For, pero de una manera mas sencilla
*/

var myArray = [5,8,1,0,3,9,7,2,4,6]

let myDictionary = [5: "Cinco",
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

let mySet: Set = [5,8,1,0,3,9,7,2,4,6]


myArray.forEach { (myInt) in
    print(myInt)
}
print("******************")

myDictionary.forEach { (myElement) in
    print(myElement)
}
print("******************")

mySet.forEach { (myInt) in
    print(myInt)
}


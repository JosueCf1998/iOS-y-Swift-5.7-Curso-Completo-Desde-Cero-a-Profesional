import Foundation

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

//  - Sort (Ordenacion): Solo para Arrays, no Dictionary y Sets
//print(myArray) //[5, 8, 1, 0, 3, 9, 7, 2, 4, 6]
myArray.sort()
//print(myArray) //[0, 1, 2, 3, 4, 5, 6, 7, 8, 9]

//Sort Custimizado
myArray.sort { (intA, intB) -> Bool in
    return intA > intB
}
//print(myArray) //[9, 8, 7, 6, 5, 4, 3, 2, 1, 0]

//  - Sorted (Ordenacion): Dejar el ordenamiento principal como estaba y agregar un nuevo arreglo ordenado. Ademas permite ordenar Diccionarios y Sets convirtiendolos en Arrays
let myArray2 = [5,8,1,0,3,9,7,2,4,6]

print(myArray2) //[3, 4, 8, 6, 7, 1, 9, 0, 5, 2]
let myArray2Sorted = myArray2.sorted()
print(myArray2) //[3, 4, 8, 6, 7, 1, 9, 0, 5, 2]
print(myArray2Sorted) //[0, 1, 2, 3, 4, 5, 6, 7, 8, 9]

//Sorted Custimizado
myArray2Sorted.sorted { (intA, intB) -> Bool in
    return intA > intB
}
print(myArray2) //[3, 4, 8, 6, 7, 1, 9, 0, 5, 2]
print(myArray2Sorted) //[0, 1, 2, 3, 4, 5, 6, 7, 8, 9]

let mySortedDictionary = myDictionary.sorted { (elementA, elementB) -> Bool in
    return elementA.key < elementB.key
}
print(mySortedDictionary)

var mySortedSet = mySet.sorted()
print(mySortedSet)

mySortedSet = mySet.sorted { (intA, intB) -> Bool in
    return intA > intB
}
print(mySortedSet)

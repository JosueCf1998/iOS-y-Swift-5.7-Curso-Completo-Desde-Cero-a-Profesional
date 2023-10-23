import Foundation

/*

 SETS
 - mescla entre arrays, y diccionarios
 - Añade valores de un unico tipo
 - Valores no ordenados y no repetidos
*/

//  Conjuntos

var mySet1 = Set<String>()
let mySet2: Set<String> = ["Josue", "Coronel", "25"]
let mySet3: Set<String> = ["Josue", "Coronel", "25", "Josue"]

//  Agregar Valores
mySet1.insert("Josue")
mySet1.insert("Coronel")
mySet1.insert("Flores")
mySet1.insert("25")
mySet1.insert("Coronel")

print(mySet1)

//  Acceso de Valores
if mySet1.contains("Josue") {
    print("Existe")
} else{
    print("No existe")
}

//  Modificacion de Valores
mySet1.remove("25")
print(mySet1)

//mySet1.removeAll()
//print(mySet1)


//  Acceso y Modificacion segun Indice
if let index = mySet1.firstIndex(of: "Flores") {
    mySet1.remove(at: index)
}
print(mySet1)

//  Iterar Valores
mySet1.insert("45")
mySet1.insert("Juan")
mySet1.insert("Olga")
mySet1.insert("Jhonathan")
mySet1.insert("Luis")

for myElement in mySet1 {
    print(myElement)
}

//  Operaciones de Conjuntos con Valores
let myIntSet: Set = [1,2,3,4,5]
let myIntSet2: Set = [0,2,5,8,9]

//  - Intersecciones
print(myIntSet.intersection(myIntSet2))
//  - Diferencia Simetrica
print(myIntSet.symmetricDifference(myIntSet2))
//  - Union
print(myIntSet.union(myIntSet2))
//  - Sustraccion
print(myIntSet.subtracting(myIntSet2))
print(myIntSet2.subtracting(myIntSet))

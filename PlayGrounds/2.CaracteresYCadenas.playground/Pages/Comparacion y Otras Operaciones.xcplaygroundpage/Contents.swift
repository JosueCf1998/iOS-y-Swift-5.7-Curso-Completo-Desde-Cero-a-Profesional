import Foundation

//Comparación(=) : Compara la variable con otra y retorna un boleano
let name1 = "Josue"
let name2 = "Coronel"
let name3 = "Josue"

name1 == name2 // "Josue" es igual a "Coronel" : No son iguales
name1 == name3 // "Josue" es igual a "Josue" : Si son iguales

//Contenido: busca el string en la cadena y retorna un booleano
let myContent = "Mi nombre es Josue"
myContent.contains(name2) // "Coronel" no esta en la cadena de caracteres
myContent.contains(name3) // "Josue" si esta en la cadena de caracteres

//Vacia : Valida si la variable esta vacia o nula
var myEmptyString = ""
myEmptyString == ""
myEmptyString.isEmpty // retorna el valor booleano: True

myEmptyString = "Valor"
myEmptyString.isEmpty // retorna el valor booleano: False

//Recorrido : recorre caracter a caracter el contenido de una cadena
for valor in myContent {
    print(valor)
}



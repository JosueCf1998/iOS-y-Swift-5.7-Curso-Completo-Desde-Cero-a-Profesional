import Foundation

//Type Casting (validacion de Tipo de Datos)

let myString = "Josue"
let myInt = 24

class MyClass {
    var name: String!
    var age: Int!
}

let myClass = MyClass()
myClass.name = "Josue Coronel"
myClass.age = 24

let myArray:[Any] = [myString, myInt, myClass]


myArray.forEach { item in
    
    //Type Casting
    if item is String {
        //Down Casting
        let myItemString = item as! String
        print("Item es de tipo String y tiene el valor de \(myItemString)")
    }else if item is Int{
        let myItemInt = item as! Int
        print("Item es de tipo Int y tiene el valor de \(myItemInt)")
    }else if item is MyClass {
        let myItemMyClass = item as! MyClass
        print("Item es de tipo MyClass y tiene el valor de \(myItemMyClass.name!) and \(myItemMyClass.age!)")
    }
}

//OTRA FORMA
myArray.forEach { item in
    if let myItemString = item as? String {
        print("Item es de tipo String y tiene el valor de \(myItemString)")
    }else if let myItemInt = item as? Int {
        print("Item es de tipo Int y tiene el valor de \(myItemInt)")
    }else if let myItemMyClass = item as? MyClass {
        print("Item es de tipo MyClass y tiene el valor de \(myItemMyClass.name!) and \(myItemMyClass.age!)")
    }
}

import Foundation

// Manejo de Errores

func sum(firstNumber: Int?, secondNumber: Int?) throws -> Int {
    
    //Lanzamos Errores
    if firstNumber == nil {
        throw SumError.firstNumberNil
    }else if secondNumber == nil {
        throw SumError.secondNumberNil
    }else if firstNumber! < 0 || secondNumber! < 0 {
        throw SumError.numberNegative(firstNumber: firstNumber!, secondNumber: secondNumber!)
    }
    
    //Realizar la Suma
    return firstNumber! + secondNumber!
}

//Definicion de tipos de errores
enum SumError: Error {
    case firstNumberNil
    case secondNumberNil
    case numberNegative(firstNumber: Int, secondNumber: Int)
}

//Propagacion de Errores
do {
    print(try sum(firstNumber: 100, secondNumber: -1))
} catch SumError.firstNumberNil{
    print("El primer numero es Nulo")
} catch SumError.secondNumberNil{
    print("El segundo numero es Nulo")
} catch SumError.numberNegative(let firstNumber, let secondNumber){
    print("Hay algun numero negativo. FirstNumber: \(firstNumber), SecondNumber: \(secondNumber)")
}

///EJEMPLOOOOOOOOOO

func ComprarCarrito(precio: Double?, cantidad: Int?, descuento: Double?) throws -> Double{
    
    if precio == nil {
        throw ResultadoError.precioNulo
    }else if cantidad == nil {
        throw ResultadoError.cantidadNulo
    }else if descuento == nil {
        throw ResultadoError.descuentoNulo
    }
    
    return Double(precio! * Double(cantidad!)) * Double((100 - descuento!) * 0.01 )
}

enum ResultadoError: Error{
    case precioNulo
    case cantidadNulo
    case descuentoNulo
}

do {
    print(try ComprarCarrito(precio: 50, cantidad: 2, descuento: 20))
} catch ResultadoError.precioNulo{
    print("El precio ingresado es Nulo")
} catch ResultadoError.cantidadNulo{
    print("La cantidad ingresada es Nulo")
} catch ResultadoError.descuentoNulo{
    print("El descuento ingresado es Nulo")
}


import Foundation

/*

 PROPERTY WRAPPER O ENVOLTORIO DE PROPIEDADES
Es la forma que nos proporciona swiftUI para poder manejar el estado
de diferentes variables, asi como pasar su valor entre vistas, modificarlos,
y desencadenar que nuesta interfaz visual se repinte
 
 
 @State
Tipo de Valor. Se usa en la vista propietaria de la variable.
utilizamo el @State cuando tengamos una propiedad que va a modificar su valor
y lo utilizamos convirtiendo a tipo State la vista que se encargara de definirlo
 
 @Binding
Es de Tipo Valor. Se usa en la vista que recibe el envio de la variable.
Inicializa en otra vista, solo se declara.
Utilizaremos @Binding cuando tengamos que leer o escribir una propiedad y
lo tengamos que actualizar, pero que la vista que lo utilizamos no es la
propietaria de esa prioridad.
 
 @StateObject
Es un Tipo de Referencia. Se usa en la vista propietaria de la variable
compleja.
Es muy parecido al State, pero hace referencias a propiedades que son mas
complejas, que no unicamente tiene un tipo simple.
Es decir, son objetos y que lo que estamos almacenando y propagando es una
referencia, no un valor.
Sirve para poder definir un objeto del tipo mutable y que lo usemos desde la
interfaz  y asi modificarla debemos usar:
    - ObservableObject
    Esto lo agregamos como tipo de la clase externa
    Es decir que esta clase, estara observando modificaciones
    - @Published
    Esto lo agregamos en las variables de la clase externa
    Es decir que como la clase estara siendo observada, las variables que
    cuentan con published, la clase podra ver sus modificaciones cuando las
    variables esten publicando su valor.
    - @StateObject
    Agregamos esto en la variable donde sucede el evento para que asi tome
    los nuevos cambios
 
State no aplica para clases de tipo ObservableObject
 
 @ObservedObject
Es de Tipo Referencia, se usa en la vista que recibe el envio de la variable
Se usa cuando se quiere usar la clase de otra vista, similar al Binding, se
declara la variable externa del tipo @ObservedObject y en la clase afectada,
le ponemos la variable de tipo @StateObject
 
 @EnviromentObject
Se usa en los casos en los que un @ObservedObject tendria que enviarse a
mas de una vista, mas conocido como variable de acceso de entorno.

 
 ViewModifier
Son utiles para encapsular codigo y reutilizarlos en multiples partes de la app

 
 
 
*/




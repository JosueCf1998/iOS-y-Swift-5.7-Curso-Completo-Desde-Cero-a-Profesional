import Foundation

/*
 CONTROL DE ACCESO
 nos sirve para restringir el acceso a diferentes partes
 de nuestro codigo, que podremos restringir a nivel de
 archivo o del modulo ejecutado
 sirve para ocultar detalles de implementacion que no es
 necesario mostrar.
 Ayuda a mejorar la estabilidad de la App
 Estos se aplican en clases, estructuras, enumeraciones,
 variables, constantes, funciones, etc.
 
 existen diferentes niveles de control de acceso:
 
 1. Open: accede al objeto desde cualquier parte del codigo. Menos restrictivo
 2. Public: accede al objeto desde cualquier parte del codigo
 3. Internal: acceder al objeto dentro nuestro modulo o app
 4. FilePrivate: accede al objeto pero solo dentro de nuestro fichero
 5. Private: accede al objeto pero solamente donde fue definido. Mas restrictivo

 ejemplo
 public Class
 Private let

*/

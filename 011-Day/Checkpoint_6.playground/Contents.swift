import Cocoa

/*
 Para verificar su conocimiento, aquí hay una pequeña tarea para usted: cree una estructura para almacenar información sobre un automóvil, incluido su modelo, número de asientos y marcha actual, luego agregue un método para cambiar marchas hacia arriba o hacia abajo.
 Piense en las variables y el control de acceso: ¿qué datos deberían ser una variable en lugar de una constante y qué datos deberían exponerse públicamente? ¿Debería el método de cambio de marcha validar su entrada de alguna manera?
 */


struct Automovil {
    
    static let asiento = 5
    static let llantas = 4
    let modelo: String
     var marcha = 0
    
    mutating func marchaArriba(){
        if marcha < 10{
            marcha+=2
            print("La marcha a aumentado a \(marcha)" )
        }else {
            print("La marcha no puede subir mas")
        }
    }
    
    mutating func marchaAbajo(){
        if marcha > 0{
            marcha-=2
            print("La marcha a disminuido a \(marcha)")
        }else {
            print("El auto esta detenido")
        }
    }
    
}


var myCar = Automovil(modelo: "Toyota")
 
myCar.marchaAbajo()
myCar.marchaArriba()
myCar.marchaArriba()
myCar.marchaAbajo()



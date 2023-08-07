import Cocoa

class Vehicle {
    let isElectric: Bool
    
    init(isElectric: Bool){
        self.isElectric = isElectric
    }
}

class Car: Vehicle { //Creamos Car que hereda de Vehicle
    let isConvertible: Bool
    
    //init(isConvertible: Bool) {
    init(isElectric: Bool, isConvertible: Bool) {//Agregamos isElectric para el super.init
        self.isConvertible = isConvertible
        //Hasta aqui nos falta saber el valor de isElectric por lo cual hasta colocar el valor nos dara error
        //Solucion
        super.init(isElectric: isElectric) //Aqui "super" nos permite declarar la constante isElectric de la clase Padre para solucionar el error
    }
}

//example

let teslaX = Car(isElectric: true, isConvertible: false)

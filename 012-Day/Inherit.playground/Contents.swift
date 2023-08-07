import Cocoa

//Herencia


class Employee { //Clase principal - padre
    let hours: Int
    
    init(hours: Int) {
        self.hours = hours
    }
    
    func printSummary() {
        print("I work \(hours) hours a day.")
    }
}

final class Developer: Employee { //Subclase - Clase hija
    // Al colocar  "final" antes de class esto nos indica que la clase no puede ser usada para heredar, pero si puede heredar de otras clase.
    func work(){//Metodo
        print("I'm writing code for \(hours) hours.")
    }
    
    override func printSummary() { //override permite modificar el metodo de la clase padre
        print("I'm a developer who will sometimes work \(hours) hours a day, but other times spend hours arguing about whether code should be indented using tabs or spaces.")
    }
}

class Manager: Employee { //Esta subclase esta heredando de Employee
    
    func work() {
        print("I'm going to mettings for \(hours) hours.")
    }
}

//Example

let peter = Developer(hours: 8)
let smith = Manager(hours: 10)
peter.work()
smith.work()

let dylan = Manager(hours: 9)
dylan.printSummary()
let thiago = Developer(hours: 7)
thiago.printSummary() //Aqui observamos que al usar override nos da como resultado los cambios realizado en el metodo

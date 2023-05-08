import Cocoa

struct Employee {
    let name: String
    var vacationAllocated = 14
    var vacationTaken = 0
/*
    var vacationRemaining: Int {
        vacationAllocated - vacationTaken
    }
*/
    var vacationRemaining: Int {
        get {   //Codigo que lee
            vacationAllocated - vacationTaken
        }

        set {   //Codigo que escribe
            vacationAllocated = vacationTaken + newValue
        }
    }
}


// valor Inicial vacationTaken = 0
var archer = Employee(name: "Sterling Archer", vacationAllocated: 14)
//archer.vacationTaken += 4 //Propiedad Calculada   valor 4
//print(archer.vacationRemaining)
archer.vacationTaken += 4
archer.vacationRemaining = 5
print(archer.vacationAllocated)


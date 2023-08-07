import Cocoa

protocol Vehicle {
    var name: String { get }
    var currentPassengers: Int { get set }
    func estimateTime(for distance: Int) -> Int
    func travel(distance: Int)
}

//Con los protocolos nos aseguramos que las struct cumplan con todo lo que contiene el protocolo

struct Car: Vehicle { //Podemos agregar mas de un protocolo con una como por ejemplo: Vehicle, CanBeElectric
    
    let name = "Car"
    var currentPassengers = 2
    
    func estimateTime(for distance: Int) -> Int {
        distance / 50
    }

    func travel(distance: Int) {
        print("I'm driving \(distance)km")
    }
    
    func openSunroof(){
        print("It's a nice day!")
    }
    
}

struct Bicycle: Vehicle {
    
    let name = "Bicycle"
    var currentPassengers = 1
    
    func estimateTime(for distance: Int) -> Int {
        distance / 10
    }
    
    func travel(distance: Int) {
        print("I'm cycling \(distance)km")
    }
}

func commute(distance: Int, using vehicle: Vehicle) {  //Vemos como Vehicle se convierte en un tipo de dato 
    if vehicle.estimateTime(for: distance) > 100 {
        print("That's too slow! I'll try a different vehicle.")
    } else {
        vehicle.travel(distance: distance)
    }
    
}

func gettravelEstimates(using vehicles: [Vehicle], distance: Int) {
    for vehicle in vehicles{
        let estimate = vehicle.estimateTime(for: distance)
        print("\(vehicle.name): \(estimate) hours to travel \(distance)km")
    }
}



let car = Car()
commute(distance: 100, using: car)

let bike = Bicycle()
commute(distance: 50, using: bike)
 
gettravelEstimates(using: [car, bike], distance: 100)

import Cocoa

struct Album { //Al ser ahora un tipo la palabra de comenzar con Mayuscula
    let title: String //Variables o constantes son PROPIEDADES
    let artist:String
    let year: Int
    
    func printSummary(){ //las funciones son METODOS
        print("\(title) (\(year)) by \(artist)")
    }
}

    //Instancia     Inicializador
let ghostStories = Album(title: "Ghost Stories", artist: "Colplay", year: 2014)

print(ghostStories.title)
print(ghostStories.artist)

ghostStories.printSummary()


print()

struct Employee {
    let name: String
    var vacationRemaining: Int

    mutating func takeVacation(days: Int) {
        if vacationRemaining > days {
            vacationRemaining -= days  //Modificar algun valor del parametro var la funcion tiene que llamarse MUTATING FUNC
            print("I'm going on vacation!")
            print("Days remaining: \(vacationRemaining)")
        } else {
            print("Oops! There aren't enough days remaining.")
        }
    }
}

var archer = Employee(name: "Sterling Archer", vacationRemaining: 14)
archer.takeVacation(days: 5)
print(archer.vacationRemaining)

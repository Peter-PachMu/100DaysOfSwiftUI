import Cocoa

struct Game {
    var score = 0{
        didSet { // Se ejecuta cuando una propiedad cambia
            print("Score is now \(score)")
        }
    }
}

var game = Game()
game.score += 10
game.score -= 3
//print("Score is now \(game.score)")
game.score += 1



struct App {
    var contacts = [String]() {
        willSet { //Se ejecuta antes de que una propiedad cambia
            print("Current value is: \(contacts)")
            print("New value will be: \(newValue)")
        }

        didSet {
            print("There are now \(contacts.count) contacts.")
            print("Old value was \(oldValue)")
        }
    }
}

var app = App()
app.contacts.append("Adrian E")
app.contacts.append("Allen W")
app.contacts.append("Ish S")

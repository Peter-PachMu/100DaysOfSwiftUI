import Cocoa

let surmane : String = "Gambit"
var score: Double = 0
var level: Int = 3
var isAuthenticated: Bool = true

var albums: [String] = ["Viva la vida", "Music of the spheres"]
var user : [String:String] = ["id":"@PachMu"]
var books: Set<String> = Set(["The Bluest eye", "Foundation"])

//Distintas formas de inicializar un Array
var soda: [String] = [String]()
var cities: [String] = []
var clues = [String]()

enum UIStyle{
    case light, dark, system
}

var style = UIStyle.light
style = .dark //Aqui ya no es necesario colocar UIStyle ya que esta almacenado la variable con el tipo con que se inicializo osea UISyle


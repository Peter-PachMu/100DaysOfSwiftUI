import Cocoa

let opposites = ["Mario" : "Wario", "Luigi" : "Waluigi"]
let peachOpposite = opposites["Peach"] //Esto nos dara nil ya que no hay un valor para Peach


if let marioOpposite = opposites["Mario"] {
    print("Mario's opposite is \(marioOpposite)") //Esto nos mostrara lo contenido en eldiccionario
}

var username: String? = nil //Strin? es la forma de declara una string como optional

if let unwrappedName = username {
    print("We got a user: \(unwrappedName)")
} else {
    print("The optional was empty.")
}

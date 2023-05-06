import Cocoa

//1 example
func greetUser(){
    print("Hi there!")
}

greetUser() // 1 resultado en consola

var greetCopy = greetUser //Creamos una variable y pasamos la funcion pero sin ()

greetCopy() //colocamos la variable y agregamos (), como si fuera una funcion
            // Esto nos dara el segundo resultado en consola


//2 example

let sayHello = {    //Creamos la variable sin parentheses () y desarrollamos la funcion
    print("Hi")
}

sayHello()     //llamamos a la variable pero ahora agregamos ()


//3 example

let sayHello2 = { (name:String) -> String in  //Esta es una segundo forma a la anterior pero colocando paramentros y retornando un tipo
    "Hi \(name)!"   //sabemos que cuando es una linea no es necesario colocar return
}

sayHello2("Peter")
//4 example

func getUserData(for id : Int) -> String {
    if id == 1996 {
        return "Peter PachMu"
    } else {
        return "Anonymous"
    }
}

let data: (Int) -> String = getUserData
let user = data(1996)
print(user)


// 5 example

let team = ["Gloria", "Piper", "Suzanne", "Tiffany", "Tasha"]
let sortedTeam = team.sorted()
print(sortedTeam)

func captainFirstSorted(name1: String, name2: String) -> Bool {

    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }

    return name1 < name2
}

let captainFirstTeam = team.sorted(by: captainFirstSorted)
print(captainFirstTeam)

//6 example
//Ahora se usara una constante para ser agregado a la funcion sort como en el anterior example

let captainFirstTeam2 = team.sorted(by: { (name1: String, name2: String) -> Bool in
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }

    return name1 < name2
})




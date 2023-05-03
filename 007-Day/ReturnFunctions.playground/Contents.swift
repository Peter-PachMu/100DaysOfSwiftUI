import Cocoa


var frase = "Hola Mundo"
var frase2 = "oMulaH odn"

func areLettersIdentical(string1: String, string2: String) -> Bool {
    let first = string1.sorted()
    let second = string2.sorted()
    return first == second
}

areLettersIdentical(string1: frase, string2:frase2)


//Cuando la funcion solo tiene una linea no es necesario colocar un return

func areLettersIdentical2(string1: String, string2: String) -> Bool {
    string1.sorted() == string2.sorted()
}
areLettersIdentical2(string1: frase, string2:frase2)

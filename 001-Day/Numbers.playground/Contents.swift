import Cocoa

let score = 10
let reallyBig = 1_000_000_000 //Esto es igual a 1000000000

let lowerScore = score - 2
let higherScore = score + 10
let doubleScore = score * 2
let squaredScore = score * score
let halvedScore = score / 2

var counter = 10
counter += 5
print(counter)

// Operadores de asignacion Compuesta
counter *= 2
counter -= 10
counter /= 2

let number = 120
print(number.isMultiple(of: 3)) //Funcion para verificar si un numero es multiplo de otro
print(150.isMultiple(of: 3))

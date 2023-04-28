import Cocoa

let filename = "lima.jpg"
print(filename.hasSuffix(".jpg")) //true

let number = 20
print(number.isMultiple(of: 3)) //false

let goodDogs = true
var gameOver = false
print(gameOver)
gameOver.toggle()// cambiara al boolean opuesto
print(gameOver)

let isMultiple = 150.isMultiple(of: 3)

var isAuthenticated = false
isAuthenticated = !isAuthenticated // otra forma de cambiar al boolean opuesto
print(isAuthenticated)
isAuthenticated = !isAuthenticated
print(isAuthenticated)



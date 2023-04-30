import Cocoa

let score = 90

if score > 85 {
    print("Great Job")
}

let speed = 88
let percentage = 85
let age = 18

if speed >= 88 {
    print("Where we're going we don't need roads.")
}

if percentage < 85 {
    print("Sorry, you failed the test.")
}

if age >= 18 {
    print("You're eligible to vote")
}

//If por orden Alfabetico
let ourName = "Dave Lister"
let friendName = "Arnold Rimmer"

if ourName < friendName {
    print("It's \(ourName) vs \(friendName)")
}

if ourName > friendName {
    print("It's \(friendName) vs \(ourName)")
}


// If con matrices

var numbers = [1, 2, 3]

numbers.append(4)

if numbers.count > 3 {
    numbers.remove(at: 0)
}
print(numbers)

//Igualdad de String

let country = "Canada"

if country == "England" {
    print("Good day!")
}

let name = "Peter"

if name != "Anonymous" {
    print("Welcome, \(name)")
}








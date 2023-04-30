import Cocoa
//Dos permite comparar un variable y determinar si es verdadera o falsa la declaracion dando una respuesta rapida

let age = 18

let canVote = age >= 18 ? "Yes" : "No"
            //  What?      True   False

print(canVote)



let hour = 23
print(hour < 12 ? "It's before noon" : "It's after noon")
//       What?       True                 False

let names = ["Jayne", "Kaylee", "Mal"]
let crewCount = names.isEmpty ? "No one" : "\(names.count) people"
print(crewCount)


enum Theme {
    case light, dark
}

let theme = Theme.dark

let background = theme == .dark ? "black" : "white"
print(background)
